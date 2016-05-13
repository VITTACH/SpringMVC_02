package com.spring.vittach.d_a_o;

import com.spring.vittach.objects.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public class UserRepository {
    @Transactional
    public void addUser(User user) {
        em.persist(user);em.flush();
    }

    //проверка на присутсвие в базе данных
    public boolean check(String fieldName, String value) {
        return em.createQuery("select user from User user"
                + "where user." + fieldName + " = :value",
                User.class).setParameter("value", value)
                .getResultList().isEmpty();
    }

    @PersistenceContext EntityManager em;
}
