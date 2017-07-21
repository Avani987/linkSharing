package com.project.dao;

//import com.project.model.Subscription;
import com.project.model.Topic;
import com.project.model.User;
import com.project.enums.Visibility;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.jws.soap.SOAPBinding;
import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

import static com.project.enums.Visibility.PUBLIC;

@Component
public class TopicDao {

    SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

    public int saveTopic(Topic topic,User user){
        // boolean status=false;
        int topicId=0;
        Session session= sessionFactory.openSession();
        Transaction transaction = null;
        Topic addtopic;
        try {
            transaction = session.getTransaction();
            transaction.begin();
            addtopic=new Topic(topic.getTopicname(),user,new Date(),new Date(),topic.getVisibility());
            session.save(addtopic);
            transaction.commit();
            topicId=addtopic.getTopicId();
        }
        catch (Exception e){
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        finally {
            session.close();
        }

        return topicId;
    }

    public Topic getTopicById(Integer topicId){

        Session session = sessionFactory.openSession();
        System.out.println("here");
        Topic topic = null;
        Query query = session.createQuery("from Topic where topicId=:id");
        query.setParameter("id",topicId);
        topic = (Topic) query.uniqueResult();
        System.out.println("topic obj"+topic.toString());
        return topic;
    }

    public Topic getTopicByName(String topicName){
        Session session = sessionFactory.openSession();
        System.out.println("here");
        Topic topic = null;
        Query query = session.createQuery("from Topic where topicname=:name");
        query.setParameter("name",topicName);
        topic = (Topic) query.uniqueResult();
        System.out.println("topic obj"+topic.toString());
        return topic;
    }

    /*public List getSubscribedTopics(User user){
        List<Topic> list;
        String username=user.getUname();
        Session session=sessionFactory.openSession();
        Query query=session.createQuery("from Topic where createdBy='"+username+"' order by dateCreated desc ");
        list=query.list();
        return list;
    }*/

    public Integer topicCount(HttpServletRequest request ){
        Session session=sessionFactory.openSession();
        User currentUser=(User)request.getSession().getAttribute("userSession");
        Query query=session.createQuery("select count(*) from Topic where createdBy="+currentUser.getUserId()+"");
        Integer count=((Number) query.uniqueResult()).intValue();
        System.out.println(count);
        return count;
    }

    public List getCreatedTopicsList(HttpServletRequest request) {
        Session session = sessionFactory.openSession();
        User currentUser = (User) request.getSession().getAttribute("userSession");
        Query query = session.createQuery("from Topic where createdBy="+currentUser.getUserId() + "");
        List<Topic> topicList = query.list();
        System.out.println(topicList);
        return topicList;
    }

   /*public List getPublicTopics(){
        List<Topic> list;
        Session session=HibernateUtil.openSession();
        Query query=session.createQuery("from Topic where visibility='PUBLIC' order by lastUpdated desc ");
        list=query.setMaxResults(5).list();
        return list;
    }*/
}
