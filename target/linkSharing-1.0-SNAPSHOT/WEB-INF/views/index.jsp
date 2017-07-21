<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<head>
<title>Bootstrap form</title>
  <%--<spring:url value="/resources/static/css/wf.css" var="homeCss" />
  <spring:url value="/resources/static/css/bootstrap.min.css" var="bootstrapCss" />--%>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="${pageContext.request.contextPath}/resources/static/css/wf.css" rel="stylesheet" />
</head>
<body>
<div class="container-fluid">
    <div class="header">
      <h2><a class="underlined"><u>Link Sharing</u></a></h2>
        <form class="form-inline" action="#" method="post">
          <div class="form-group">
            <label class="control-label" for="search"> <a href="#"><i id="search" class="fa fa-search" aria-hidden="true"></i></a></label>
            <input type="text" class="form-control" name="" value="Search">
            <a href="#"><i id="cross" class="fa fa-times" style="margin-left:-40px"></i></a>
          </div>
        </form>
      </div>
    </div><!--container-fluid-->

<div class="container">
<div class="col-md-7 col-sm-7">
<div class="row recent">

<div class="heading">
<h4>Recent shares</h4>
</div>

<div class="row user1 uplace">
<div class="col-md-2">
<img src="${pageContext.request.contextPath}/resources/static/image/user.png" alt="Profile icon" height="89" width="79">
</div>
<div class="col-md-8" style="width:76%">
<div class="top-line">
<span style="margin-left:-20px;">Uday Pratap Singh</span>
<span style="margin-left:10px; color:grey;">@uday 5min</span>
<span style="float:right; color:blue;">Grails</span>
</div>
<div class="mid">
<p style="margin-left:-20px;">Loren Ipsum doler sit amert,colesur lit.Nulla quam velit elit ifot slfie, pharetra oil fkgg, rirrmg.Duis.ajdhkd, djeken i hvane cnsks,j.</p>
</div>
<div class="bottom-line">
<span style="margin-left:-20px;">
  <i class="fa fa-facebook-square"></i>
  <i class="fa fa-tumblr"></i>
  <i class="fa fa-google-plus"></i>
<span style="float:right;"><u><a href=#>View post</a></u></span>
</span>
</div>
</div>
</div><!--user1-->

<div class="row user2 uplace">
<div class="col-md-2">
<img src="${pageContext.request.contextPath}/resources/static/image/user.png" alt="Profile icon" height="89" width="79">
</div>
<div class="col-md-8" style="width:76%">
<div class="top-line">
<span style="margin-left:-20px;">Uday Pratap Singh</span>
<span style="margin-left:10px; color:grey;">@uday 10min</span>
<span style="float:right; color:blue;">Grails</span>
</div>
<div class="mid">
<p style="margin-left:-20px;">Loren Ipsum doler sit amert,colesur lit.Nulla quam velit elit ifot slfie, pharetra oil fkgg, rirrmg.Duis.ajdhkd, djeken i hvane cnsks,j.</p>
</div>
<div class="bottom-line">
<span style="margin-left:-20px;">
 <i class="fa fa-facebook-square"></i>
  <i class="fa fa-tumblr"></i>
  <i class="fa fa-google-plus"></i>
<span style="float:right;"><u><a href=#>View post</a></u></span>
</span>
</div>
</div>
</div><!--user2 -->

</div><!-- recent -->

<div class="row top">

<div class="heading">
<h4>Top posts</h4>
  <div class="btn-group pull-right">
  <button type="button" class="btn btn-default">Today</button>
  <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="caret"></span>
    <span class="sr-only"></span>
  </button>
  <ul class="dropdown-menu">
   <li>Today</li>
     <li>1 week</li>
      <li>1 month</li>
	  <li>1 year</li>
  </ul>
</div>
</div>
   
   
<div class="row user1 uplace">
<div class="col-md-2">
<img src="${pageContext.request.contextPath}/resources/static/image/user.png" alt="Profile icon" height="89" width="79">
</div>
<div class="col-md-8" style="width:76%">
<div class="top-line">
<span style="margin-left:-20px;">Uday Pratap Singh</span>
<span style="margin-left:10px; color:grey;">@uday 21 july 2014</span>
<span style="float:right; color:blue;">Grails</span>
</div>
<div class="mid">
<p style="margin-left:-20px;">Loren Ipsum doler sit amert,colesur lit.Nulla quam velit elit ifot slfie, pharetra oil fkgg, rirrmg.Duis.ajdhkd, djeken i hvane cnsks,j.</p>
</div>
<div class="bottom-line">
<span style="margin-left:-20px;">
 <i class="fa fa-facebook-square"></i>
  <i class="fa fa-tumblr"></i>
  <i class="fa fa-google-plus"></i>
<span style="float:right;"><u><a href=#>View post</a></u></span>
</span>
</div>
</div>
</div><!--user1-->

</div><!-- top -->

</div><!--col-md-7 -->

<div class="col-md-5">
<div class="row form1">
<div class="heading">
<h4>Login</h4>
</div>
<form class="form-horizontal" action="login" method="post" id="login">
  <div class="form-group">
    <label class="control-label col-sm-5">Username* </label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="uname" id="uname1">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-5">Password* </label>
    <div class="col-sm-7"> 
      <input type="password" class="form-control" name="password" id="pwd1">
    </div>
  </div>
  <div class="form-group"> 
   <div class="col-sm-6 col-xs-6"><span class="link"><a href="/forgot"><u>Forgot Password</u></a></span></div>
   <div class="col-sm-6 col-xs-6"><input type="submit" value="login"></div>
  </div>
</form>
</div><!-- form1-->

<div class="row form2">
<div class="heading">
<h4>Register</h4>
</div> 
<form action="register" method="post" id="registerform" class="form-horizontal" enctype="multipart/form-data">
  <div class="form-group">
    <label class="control-label col-sm-5">First name* </label>
    <div class="col-sm-7">
      <input type="text" class="form-control" id="fname"  name="fname">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-5">Last name* </label>
    <div class="col-sm-7">
      <input type="text" class="form-control" id="lname"  name="lname">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-5" >Email* </label>
    <div class="col-sm-7">
      <input type="email" class="form-control" id="email" name="email">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-5" >Username* </label>
    <div class="col-sm-7">
      <input type="text" class="form-control" id="uname" name="uname" <%--onkeyup="checkusername();"--%>/>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-5" >Password* </label>
    <div class="col-sm-7"> 
      <input type="password" class="form-control" id="pwd" name="password">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-5" name="confirmpwd">Confirm Password* </label>
    <div class="col-sm-7"> 
      <input type="password" class="form-control" id="cpwd" name="confirmpwd" onkeyup="checkPass(); return false;"/>
    </div>
  </div>
	<div class="form-group">
       <label class="control-label col-sm-5" name="photo">Photo</label>
       <div class="col-sm-7">
       <input type="file" class="form-control" id="photo" name="image"/>
       </div>
     </div>
  <div class="form-group"> 

   <div class="col-sm-4 pull-right"><input type="submit" value="submit"><%--<button type="submit" class="reg btn btn-default">Register</button>--%></div>
  </div>
</form>
</div> <!-- form2 -->

</div><!-- col-md-5 -->

</div><!-- container -->

<script src="${pageContext.request.contextPath}/resources/static/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/login.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/register.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/password.js"></script>
</body>
</html>
