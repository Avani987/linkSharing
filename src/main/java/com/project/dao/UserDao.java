package com.project.dao;

import com.project.model.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import java.util.List;

public class UserDao{

    SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

    public void addUser(User user,byte[] photo) {
        Session session = sessionFactory.openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();
            /*Author author = new Author();
            author.setFirstName(fname);
            author.setLastName(lname);
            author.setAge(age);*/
            User dbUser=new User(user.getFname(),user.getLname(),user.getUname(),user.getEmail(),user.getPassword(),photo);
            session.save(dbUser);
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
            System.out.println(username+" "+password);
            Query query = session.createQuery("from User where uname='"+username+"' and password='"+password+"'");
            //query.setMaxResults(1);
            /*user=(User)query.getSingleResult();*/
            /*user=(User)query.getResultList().stream().findFirst();*/
            List result = query.getResultList();
            if (!result.isEmpty())
                user = (User) result.get(0);
            user.setActive(true);
            transaction.commit();

        } catch (Exception e) {

            transaction.rollback();
            e.printStackTrace();

        } finally {

            session.close();

        }

        return user;
    }

    public boolean authenticateEmail(String email) {

        Session session=sessionFactory.openSession();
        Transaction transaction=null;
        User user;
        try{
            transaction = session.beginTransaction();
            Query query=session.createQuery("from User where email='"+email+"'");
            user=(User)query.getSingleResult();
            if(user!=null){
                return true;
            }
            transaction.commit();
        }
        catch (Exception e) {

            transaction.rollback();
            e.printStackTrace();

        } finally {

            session.close();

        }
        return false;

    }

    /*public Boolean checkUsername(String username){
        Session session= sessionFactory.openSession();

        *//*System.out.println("username final:"+username);*//*
        //Criteria ct=ss.createCriteria(User.class);
        List<User> list;

        Query query=session.createQuery("from User where uname='"+username+"'");
        list=query.getResultList();

        if(list.isEmpty())
        {
            return false;
        }
        else
        {
            return true;
        }
    }*/

    public boolean changePassword(String email,String password){
        boolean status=false;
        int result=0;
        Session session=sessionFactory.openSession();
        Transaction transaction=null;
        User user=null;
        try {
            transaction=session.getTransaction();
            transaction.begin();
            Query query=session.createQuery("update User set password='"+password+"' where email='"+email+"'");
            result=query.executeUpdate();
            transaction.commit();
        }catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }

        if(result==1)
            status=true;
        else
            status=false;

        return status;
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
