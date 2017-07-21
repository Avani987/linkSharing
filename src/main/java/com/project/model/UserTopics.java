package com.project.model;

import com.project.model.Topic;
import com.project.model.User;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;

@Embeddable
public class UserTopics {


    private Topic topic;
    private User user;

    public UserTopics() {
        super();
    }

    public UserTopics(Topic topic, User user) {

        this.topic = topic;
        this.user = user;
    }

    @ManyToOne
    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    @ManyToOne
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}