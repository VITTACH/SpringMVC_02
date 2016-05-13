package com.spring.vittach.interceptor;

import com.spring.vittach.objects.User;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CheckInterceptr extends HandlerInterceptorAdapter {
    @Override
    public void postHandle
            (HttpServletRequest request, HttpServletResponse response, Object hand, ModelAndView modelandview)
            throws IOException {
        if (request.getRequestURI().contains("chk")) { User user = (User) modelandview.getModel().get("user");
            if (user.getName().isEmpty() || user.getPassword().isEmpty()) {
                if (user.getName().isEmpty()){user.setMessage("Incorrect login!");}
                if (user.getPassword().isEmpty()) user.setMessage("Incorrect pas");
                response.sendRedirect(request.getContextPath() + "/fail");
            }
        }
    }
}