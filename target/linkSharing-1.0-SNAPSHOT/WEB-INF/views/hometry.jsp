
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="register" method="post" class="form-horizontal">
    <div class="form-group">
        <label class="control-label col-sm-5" >First name* </label>
        <div class="col-sm-7">
            <input type="text" class="form-control" name="fname">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-5">Last name* </label>
        <div class="col-sm-7">
            <input type="text" class="form-control" name="lname">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-5" >Email* </label>
        <div class="col-sm-7">
            <input type="email" class="form-control" name="email">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-5" >Username* </label>
        <div class="col-sm-7">
            <input type="text" class="form-control" name="uname">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-5" >Password* </label>
        <div class="col-sm-7">
            <input type="password" class="form-control" name="password">
        </div>
    </div>
    <!--<div class="form-group">
        <label class="control-label col-sm-5" name="confirmpwd">Confirm Password* </label>
        <div class="col-sm-7">
            <input type="password" class="form-control" id="cpwd">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-5" name="photo">Photo</label>
        <div class="col-sm-7">
            <input type="file" class="form-control" id="photo" name="photo"/>
        </div>
    </div>-->
    <div class="form-group">

        <div class="col-sm-4 pull-right"><input type="submit" value="submit"><%--<button type="submit" class="reg btn btn-default">Register</button>--%></div>
    </div>
</form>
</body>
</html>
