<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forgot Password</title>
    <link href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css" rel="stylesheet" />
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-12" style="margin-top: 150px;">
            <div class="panel panel-default" style="margin-left: 300px;margin-right: 300px; border:2px solid;">
                <div class="panel-heading text-center" style="border-bottom:2px solid;">
                    <b>Password Change</b>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" action="verifyEmail" method="post">
                        <div class="form-group" >
                            <label class="control-label col-md-4">Email*</label>
                            <div class="col-md-8">
                                <input type="email" name="email"  class="form-control" placeholder="Enter Email"  required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Validate Email</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
