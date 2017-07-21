<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title>Forgot Password</title>
    <link href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-12 col-xs-12" style="margin-top: 150px;">
            <div class="panel panel-default" style="margin-left: 300px;margin-right: 300px; border: 2px solid;">
                <div class="panel-heading text-center" style="border-bottom: 2px solid;">
                   <b>Password Change</b>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" name="pwdChange" action="passwordChange" method="post">
                        <div class="form-group" >
                            <label class="control-label col-md-4">Confirm Email*</label>
                            <div class="col-md-8">
                                <input type="email" name="email" id="email" class="form-control" placeholder="Enter Email"  required>
                            </div>
                        </div>
                        <div class="form-group" >
                            <label class="control-label col-md-4">Password*</label>
                            <div class="col-md-8">
                                <input type="password" name="password" class="form-control" id="pwd" placeholder="Enter password"  required>
                            </div>
                        </div>
                        <div class="form-group" >
                            <label class="control-label col-md-4">Confirm Password*</label>
                            <div class="col-md-8">
                                <input type="password" name="confirm_password" class="form-control" id="cpwd" placeholder="Confirm password" onkeyup="checkPass(); return false;"  required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Change Password</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/password.js"></script>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/passwordAjax.js"></script>--%>

</body>
</html>
