<%--<%@ page import="com.ttnd.entity.Topic" %>--%>
<%--<%@ page import="com.project.model.User" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="display" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/dashboard.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/custom.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <%--<script src="resources/static/js/popup.js"></script>--%>
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta charset="utf-8">
    <title>Dashboard | Link Sharing</title>
</head>
<body>
<%--<%@include file="navbar-all-icons.jsp" %>--%>
<%-- Header --%>
<div class="container-fluid">
    <div class="row header">
       <div class="col-md-12">

            <!--<button type="button" class="btn btn-link ls pull-left"><a href="#">Link Sharing</a></button>-->
                <a href="#"><u><h2 style="color:black">Link Sharing</h2></u></a>
                <div class="move pull-right">
                    <div class="col-sm-5 icons">
                    <form class="form-inline" action="#" method="post">
                        <div class="form-group">
                            <label class="control-label" for="search"> <a href="#"> <span id="search" class="fa fa-search"></span></a></label>
                            <input type="text" class="form-control" name="" value="Search" style="height:18px">
                            <a href="#"><span id="cross" class="fa fa-times"></span></a>
                        </div>
                    </form>
                    </div>
                    <div class="col-sm-1 icons">
                        <a class="btn" role="button" data-toggle="modal"
                           data-target="#create-topic-box"> <span class="fa fa-comment"></span>
                        </a>
                    </div>

                    <div class="col-sm-1 icons">
                        <a class="btn" role="button" data-toggle="modal"
                           data-target="#send-invite-box"> <span
                                class="fa fa-envelope"></span>
                        </a>
                    </div>

                    <div class="col-sm-1 icons">
                        <a class="btn" role="button" data-toggle="modal"
                           data-target="#share-link-box"> <span
                                class="fa fa-link"></span>
                        </a>
                    </div>

                    <div class="col-sm-1 icons">
                        <a class="btn" role="button" data-toggle="modal"
                           data-target="#share-document-box"> <span class="fa fa-file-o"></span>
                        </a>
                    </div>

                    <div class="col-sm-2 icons" style="margin-top:1px; margin-bottom:4px;">
                        <div class="dropdown">
                            <a class="btn dropdown-toggle" type="button" data-toggle="dropdown"><span
                                    class="fa fa-user"></span><span style="margin-left:2px;">${username}</span>
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Profile</a></li>
                                <li><a href="#">Users</a></li>
                                <li><a href="#">Topics</a></li>
                                <li><a href="#">Posts</a></li>
                                <li><a href="/logout">Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-5">
            <div class="wrap">
                <!--rounded username panel-->
                <div class="row rounded-all">
                    <div class="media">
                        <div class="media-left">
                            <a class="dp" href="#"><span class="glyphicon glyphicon-user"></span></a>
                        </div>
                        <div class="media-body">
                            <a class="black" href="#"><h2 class="media-heading">${firstname} ${lastname}</h2></a>
                            <p><span class="text-muted">@${username}</span><p>
                            <div class="row">
                                <div class="col-xs-6">
                                    <span class="text-muted">Subscriptions</span>
                            <p><a>50</a></p>
                        </div>
                        <div class="col-xs-6">
                            <span class="text-muted">Topics</span>
                            <p><a>50</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Panel for subscriptions-->
        <div class="row rounded-top">
            <h5>Subscriptions</h5>
            <div class="panel-heading-right-text"><a>View All</a></div>
        </div>
        <div class="row">
            <%--<%@include file="not-personal-subscription.jsp"%>--%>
            <%@include file="personal-subscription.jsp"%>
        </div>
        <hr>
        <%--Subsciption end--%>

        <!--Panel Trending Topics-->
        <div class="row rounded-top">
            <h5 class="inline">Trending topics</h5>
        </div>
        <div class="row">
            <%--<c:forEach items="${trendingTopicList}" var="topic">
                <%  Topic topic=(Topic)pageContext.getAttribute("topic");
                    User user=(User) request.getAttribute("user");
                    if(topic.getCreatedBy().getUserid()==user.getUserid()){
                %>
                        <%@include file="personal-topic.jsp"%>
                <%  }else{%>
                        &lt;%&ndash;<%@include file="unsubscribed-topic.jsp"%>&ndash;%&gt;
                <%}%>
            </c:forEach>--%>
        </div>
        <hr>
        <%--Trending topics end--%>
    </div>
</div>
<div class="col-md-7">
    <div class="wrap">
        <%--<div class="text-center font-weight-bold"><h3>${popupMessage}</h3></div>--%>
            <!--Inbox panel-->
            <div class="row rounded-top">
                <h5>Inbox</h5>
            </div>
            <div class="row">
                <%--<%@include file="inbox.jsp"%>
                <%@include file="inbox.jsp"%>--%>
            </div>
            <hr>
            <%--Inbox end--%>

    </div><!--wrap-->
</div> <!--col-md-7-->
</div><!--row-->
</div><!--container-->

<%--form for subscibing(submitted through js)--%>
<%--<form:form id="subscribeform" action="subscribe" commandName="subscription" method="post" cssStyle="display:none">
    <form:input id="subsTopicid" path="topic.topicid" value=""/>
    <form:input id="subsUserid" path="user.userid" value="${user.userid}"/>
</form:form>
<script>
    function submitSubscriptionForm(topicid){
        $("#subscribeform #subsTopicid").val(topicid);
        $("#subscribeform").submit();
    }
</script>--%>
<!-- jQuery library -->
<%@include file="create-topic.jsp"%>
<%@include file="send-invite.jsp"%>
<%@include file="share-document.jsp"%>
<%@include file="share-link.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
