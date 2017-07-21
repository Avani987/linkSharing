package com.project.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;
import javax.persistence.JoinColumn;
import com.project.enums.Visibility;

@Entity
@Table(name = "topic")
public class Topic{

    private Integer topicId;
    private String topicname;
    private User createdBy;
    private Date dateCreated;
    private Date lastUpdated;
    private Visibility visibility;

    public Topic() {

    }

    public Topic(String topicname, User createdBy, Date dateCreated, Date lastUpdated,Visibility visibility) {

        this.topicname = topicname;
        this.createdBy = createdBy;
        this.dateCreated = dateCreated;
        this.lastUpdated = lastUpdated;
        this.visibility = visibility;
    }


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "topicid")
    public Integer getTopicId() {
        return topicId;
    }

    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }

    @Column(name = "topicname", nullable = false)
    public String getTopicname() {
        return topicname;
    }

    public void setTopicname(String topicname) {
        this.topicname = topicname;
    }

    @OneToOne(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER, targetEntity = User.class, orphanRemoval = true)
    public User getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(User createdBy) {
        this.createdBy = createdBy;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "datecreated")
    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "lastupdated")
    public Date getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(Date lastUpdated) {
        this.lastUpdated = lastUpdated;
    }

    @Column(name = "visibility", nullable = false)
    @Enumerated(EnumType.STRING)
    public Visibility getVisibility() {
        return visibility;
    }

    public void setVisibility(Visibility visibility) {
        this.visibility = visibility;
    }

    @Override
    public String toString() {
        return "Topic Name : " + getTopicname() + " Created By : "+ getCreatedBy();
    }

}