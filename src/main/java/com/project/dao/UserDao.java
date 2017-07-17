package com.project.dao;

import com.project.model.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

public class UserDao{

    SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

    public void addUser(User user) {
        Session session = sessionFactory.openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();
            /*Author author = new Author();
            author.setFirstName(fname);
            author.setLastName(lname);
            author.setAge(age);*/
            session.save(user);
            transaction.commit();
            System.out.println("Record inserted successfully");
        } catch (HibernateException e) {
            transaction.rollback();
            e.printStackTrace();
        } finally {
            session.close();
        }

    }

    public User validateUser(String username,String password)
    {
        Session session = sessionFactory.openSession();
        Transaction transaction = null;
        User user=null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("from User where uname='"+username+"' and password='"+password+"'");
            query.setMaxResults(1);
            user=(User)query.getSingleResult();
            transaction.commit();

        } catch (Exception e) {

            transaction.rollback();
            e.printStackTrace();

        } finally {

            session.close();

        }

        return user;
    }

    /*public void deleteAuthor(int id) {

        Session session = sessionFactory.openSession();
        Transaction transaction=null;
        try {
            transaction=session.beginTransaction();
            Author author=(Author)session.get(Author.class,id);
            session.delete(author);
            System.out.println("Author record deleted!");
            session.getTransaction().commit();

        } catch (HibernateException e) {

            transaction.rollback();

            e.printStackTrace();

        } finally {

            session.close();

        }
    }

    public void updateAuthor(int i) {

        Session session = sessionFactory.openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Author author= (Author)session.get(Author.class,i);
            Scanner sc = new Scanner(System.in);
            System.out.println("Enter the new First Name: ");
            String fn = sc.next();
            System.out.println("Enter the new Last Name: ");
            String ln = sc.next();
            System.out.println("Enter the new Age: ");
            int ag = sc.nextInt();
            author.setAge(ag);
            author.setFirstName(fn);
            author.setLastName(ln);
            session.update(author);
            System.out.println("Author record updated!");
            session.getTransaction().commit();
        } catch (HibernateException e) {

            transaction.rollback();

            e.printStackTrace();

        } finally {

            session.close();

        }
    }*/
}
