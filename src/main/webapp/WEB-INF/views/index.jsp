<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<head>
<title>Bootstrap form</title>
  <%--<spring:url value="/resources/static/css/wf.css" var="homeCss" />
  <link rel="stylesheet" href="${homeCss}">--%>
<meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <%--<link rel="stylesheet" href="${homeCss}">--%>
    <style>
        .container-fluid{
            border:2px solid;
            border-radius:10px;
            padding:3px;
        }

        .header h2{
            display:inline-block;
            margin-top:10px;
        }

        .header form{
            float:right;
        }

        .header input{
            border:none;
        }

        .header .form-group{
            display:inline-flex;
            border:2px solid;
            border-radius:35px;
            margin-top:5px;
            height:30px;
        }

        .header span#search{
            margin-left:15px;
            margin-top: 5px;
        }

        .header span#cross{
            margin-right:15px;
            margin-top:5px;
        }

        .recent,.top,.form1,.form2{
            border:2px solid;
            margin-top : 26px;
            margin-right : 20px;
            margin-bottom:5px;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
        }

        .heading{
            border-bottom : 2px solid;
            background-color :#C8CFCD;
            padding-left:7px;
            padding-right:7px;
            margin-top:0px;
            padding-top:0.5px;
            margin-bottom:15px;
        }

        .uplace{
            margin-bottom:20px;
            margin-left:10px;
        }

        .btn-group {
            height:30px;
            border:2px solid;
            border-radius:5px;
            margin-top:-35px;
        }

        .btn-group .btn-default{
            height:26px;
            border-right:3px solid;
            padding-right:30px;
            padding-top:2px;
        }

        .dropdown-toggle{
            height:26px;
            padding-top:2px;
        }

        form{padding:10px 25px 10px 10px;}

        .form-group .btn{
            border:2px solid;
            border-radius:5px;
            background-color:#C8CFCD;
        }

        .form-group .link, .sub{
            margin-left:50px;
            float:right;
        }

        .form-control{
            border:2px solid;
            border-radius:0px;
            height:25px;
            margin-bottom:10px;
        }

        .reg{margin-left:15px;}

        .sub, .reg{
            padding:1px 20px 1px 20px;
        }

        #photo{
            padding-top:0px;
            padding-bottom:0px;
            padding-left:0px;
        }

        .browse{
            margin-left:-25px;
            padding-top:1px;
            padding-bottom:1px;
        }

        #brand{
            padding-left:10px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="header">
      <h2><a class="underlined"><u>Link Sharing</u></a></h2>
        <form class="form-inline" action="#" method="post">
          <div class="form-group">
            <label class="control-label" for="search"> <a href="#"> <span id="search" class="glyphicon glyphicon-search"></span></a></label>
            <input type="text" class="form-control" name="" value="Search">
            <a href="#"><span id="cross" class="glyphicon glyphicon-remove-sign"></span></a>
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
<img src="user.png" alt="Profile icon" height="89" width="79">
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
<img src="facebook.png" alt="share" height="26" width="26">
<img src="twitter.png" alt="share" height="25" width="25">
<img src="google.png" alt="share" height="22" width="22">
<span style="float:right;"><u><a href=#>View post</a></u></span>
</span>
</div>
</div>
</div><!--user1-->

<div class="row user2 uplace">
<div class="col-md-2">
<img src="user.png" alt="Profile icon" height="89" width="79">
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
<img src="facebook.png" alt="share" height="26" width="26">
<img src="twitter.png" alt="share" height="25" width="25">
<img src="google.png" alt="share" height="22" width="22">
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
<img src="user.png" alt="Profile icon" height="89" width="79">
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
<img src="facebook.png" alt="share" height="26" width="26">
<img src="twitter.png" alt="share" height="25" width="25">
<img src="google.png" alt="share" height="22" width="22">
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
<form class="form-horizontal" action="login" method="post">
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
   <div class="col-sm-6 col-xs-6"><span class="link"><a href=#><u>Forgot Password</u></a></span></div>
   <div class="col-sm-6 col-xs-6"><input type="submit" value="login"></div>
  </div>
</form>
</div><!-- form1-->

<div class="row form2">
<div class="heading">
<h4>Register</h4>
</div> 
<form action="register" method="post" class="form-horizontal">
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
      <input type="text" class="form-control" id="uname" name="uname">
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
      <input type="password" class="form-control" id="cpwd">
    </div>
  </div>
	<div class="form-group">
       <label class="control-label col-sm-5" name="photo">Photo</label>
       <div class="col-sm-7">
       <input type="file" class="form-control" id="photo" name="photo"/>
       </div>
     </div>
  <div class="form-group"> 

   <div class="col-sm-4 pull-right"><input type="submit" value="submit"><%--<button type="submit" class="reg btn btn-default">Register</button>--%></div>
  </div>
</form>
</div> <!-- form2 -->

</div><!-- col-md-5 -->

</div><!-- container -->
</body>
</html>
