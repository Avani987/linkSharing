package com.project.service;


import com.project.dao.TopicDao;
//import com.project.model.Subscription;
import com.project.model.Topic;
import com.project.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Service
public class TopicService {

    TopicDao topicDao=new TopicDao();

    public int saveTopic(Topic topic, User user){
        int  topicId=topicDao.saveTopic(topic,user);
        System.out.println("topic id"+topicId);
        return topicId;
    }

    public Topic getTopic(Integer topicId){
        System.out.println("getting topic");
        Topic topic=topicDao.getTopicById(topicId);
        return topic;
    }

    public Topic getTopicByName(String topicName){
        System.out.println("getting topic");
        Topic topic=topicDao.getTopicByName(topicName);
        return topic;
    }

    public Map TopicCount(HttpServletRequest request){
        Map<String,Integer> map=new HashMap<>();
        map.put("TopicCount",topicDao.topicCount(request));
        return map;
    }

   /* public List getSubscribedTopics(User user){
        List<Topic> list=topicDao.getSubscribedTopics(user);
        return list;
    }*/

    /*public Map getPublicTopics(){
        Map<Topic,User> map=new HashMap<Topic, User>();
        List<Topic> list=topicDao.getPublicTopics();
       for(Topic topic:list){
          User user=topic.getCreatedBy();
           map.put(topic,user);
       }
        return map;
    }*/
    public List getCreatedTopicList(HttpServletRequest request){
        List<Topic> topicList=topicDao.getCreatedTopicsList(request);
        return topicList;
    }
}


