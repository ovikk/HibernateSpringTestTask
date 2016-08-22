package com.ovikh.javarush.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;


import com.ovikh.javarush.domain.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Ovik on 21.08.2016.
 */

@Service("userService")
@Transactional
public class UserService {

    @Resource(name="sessionFactory")
    private SessionFactory sessionFactory;

    public List<User> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM User");
        return query.list();
    }

    public List<User> getAllPage(int begin, int num) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM User");
        List<User> users = query.list();
        List<User> users_end = new ArrayList<User>();
        if (users.size() <= begin) {
            return users;
        }else if (begin < users.size() && users.size() < (begin+num)){
            for (int i = begin; i < users.size(); i++) {
                users_end.add(users.get(i));
            }
            return users_end;
        }else {
            for (int i = begin; i < begin + num; i++) {
                users_end.add(users.get(i));
            }
            return users_end;
        }
    }

    public List<User> getNotAll(String name) {
        Session session = sessionFactory.getCurrentSession();
        Query q = session.createQuery("SELECT e FROM User e WHERE e.name = :name");
        q.setParameter("name", name);
        List<User> result = q.list();
        return result;
    }

    public User get(Integer id ) {
        Session session = sessionFactory.getCurrentSession();
        User user = (User) session.get(User.class, id);
        return user;
    }

    public void add(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.save(user);
    }

    public void delete(Integer id) {
        Session session = sessionFactory.getCurrentSession();
        User user = (User) session.get(User.class, id);
        session.delete(user);
    }

    public void edit(User user) {
        Session session = sessionFactory.getCurrentSession();
        User existingUser = (User) session.get(User.class, user.getId());
        existingUser.setName(user.getName());
        existingUser.setAge(user.getAge());
        existingUser.setAdmin(user.isAdmin());
        existingUser.setDate(new Date());
        session.save(existingUser);
    }
}