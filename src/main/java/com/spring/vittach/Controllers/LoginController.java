package com.spring.vittach.Controllers;

import com.spring.vittach.d_a_o.UserRepository;
import com.spring.vittach.objects.User;
import com.spring.vittach.services.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.*;

@Controller
@SessionAttributes("user")
public class LoginController {
    @Autowired
    FileService fileService;
    @Autowired
    UserRepository userRepository;

    @ModelAttribute("user")
    public User populatePerson() {
        return new User();
    }

    /*для registration используем метод RequestMethod.POST
    /форма всегда передает свои значения по средствам POST
    /после кнопки Submit спомощью аннотации@ModelAttribute
    получаем нашу модель типа user, заполненную main.jsp*/
    @RequestMapping(value = "/reg",
            method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView regis(@ModelAttribute User imodel) {
        return new ModelAndView("regist", "user", imodel);
    }

    //выход пользователя с сайта и удаление его лок сессии
    @RequestMapping(value = "/ext", method = RequestMethod.POST)
    public ModelAndView exit
    (SessionStatus sessionStatus, HttpSession session) {
        sessionStatus.setComplete();
        User u = new User();
        session.setAttribute("user", u);
        return new ModelAndView("index", "user", u);
    }

    //перенаправление на главную страницу личного кабинета
    @RequestMapping(value = "/chk", method = RequestMethod.POST)
    public ModelAndView check(@ModelAttribute User imodel) {
        return new ModelAndView("home", "user", imodel);
    }

    //нажатие на логотип сайта в личном кабинете и стартухе
    @RequestMapping(value = "/dex", method = RequestMethod.GET)
    public ModelAndView index(@ModelAttribute("user") User imodel) throws IOException {
        ModelAndView modelandview = new ModelAndView();
        if (imodel.getName() == null || imodel.getPassword() == null)
            modelandview.setViewName("index");
        else {
            modelandview.setViewName("page");
            imodel.setMarquee(fileService.getClasspathResourceAsString("resources/down-marquee.txt"));
        }
        return modelandview.addObject("user", imodel);
    }

    //обработчик исключительных ситтуаций от interceptor'a
    @RequestMapping(value = "/fail", method = RequestMethod.GET)
    public ModelAndView failed(@ModelAttribute("user") User imodel) {
        imodel.setName(null);
        imodel.setPassword(null);
        return new ModelAndView("failed", "msg", imodel.getMessage());
    }

    /*тип hhtp метода обязанна GET для стартовой страницы.
    //Когда мы создаем объект User, то в контексте нашего
    //Spring прилож-я будет создаватся переменная с именем
    //user, которой будет присвоено значение этого объекта
    //так как в качестве поля setViewName указано значение
    //main,то будет открыта страница main.jspкоторая лежит
    //в директории src /main/webapp/WEB-INF/views/. Почему
    //именно .jsp,да потому,что мы этот суффикс-расширение
    //указали(хотя это сделано за нас)в dispetcher servlet
    //посмотреть можно в файле servlet-context.xml, именно
    //строчку<beans:property name="suffix" value=".jsp" />
    //файл расположен в Spring Elements/Beans/ при условии
    //что вы работаете в среде Eclipse с выбранным методом
    //представления данных (аля перспективой) - Java EE.*/
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView main(HttpSession session) {
        User u = new User();
        session.setAttribute("user", u);
        return new ModelAndView("index", "user", u);
    }

    //регистрация нового пользователя(registration new user)
    @RequestMapping(value = "/new", method = RequestMethod.POST)
    public ModelAndView newUser(@ModelAttribute User imodel) {
        String password, login, email;
        email = imodel.getInput_mal().trim();
        login = imodel.getInput_log().trim();
        password = imodel.getInput_pas().trim();

        if (login.length() >= 5)
            if (password.length() > 5)
                //проверка на совпадение введенных паролей
                if (password == imodel.getInput_rep().trim())
                    //Проверка на регистрацию того же логина
                    if (userRepository.check("input_log", login))
                        //Проверка на регистрацию того же майла
                        if (userRepository.check("input_mal", email)) {
                            imodel.setInput_mal(email);
                            imodel.setInput_log(login);
                            imodel.setInput_pas(password);
                            userRepository.addUser(imodel);
                            return new ModelAndView("home", "user", imodel);
                        } else
                            imodel.setMessage("Эта почта занята");
                    else
                        imodel.setMessage("Такой логин занят");
                else
                    imodel.setMessage("Пароли не совпадают");
            else
                imodel.setMessage("Пароль < 6 знаков");
        else
            imodel.setMessage("Логин <= 5 знаков");

        return new ModelAndView
                ("failed", "msg", imodel.getMessage());
    }
}
