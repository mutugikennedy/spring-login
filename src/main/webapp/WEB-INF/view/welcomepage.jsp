<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <title> Test</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
    <link href="static/plugins/font-awesome.min.css" rel="stylesheet">
    <link href="static/plugins//fontawesome-4.6.3.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  	<div class="collapse navbar-collapse" id="navbarNav">
			    <ul class="navbar-nav">
<%--				      <li class="nav-item active">--%>
<%--				        	<a class="nav-link" href="/welcome">Tecno-Tab <span class="sr-only">(current)</span></a>--%>
<%--				      </li>--%>
				      <li class="nav-item">
				        	<a class="nav-link" href="/login">Login</a>
				      </li>
				      <li class="nav-item">
				       	 <a class="nav-link" href="/register">Registration</a>
				      </li>
<%--				      <li class="nav-item">--%>
<%--				        	<a class="nav-link" href="/all-users">All-Users</a>--%>
<%--				      </li>--%>
			    </ul>
	  	</div>
</nav>

<c:choose>
<%--    <c:when test="${mode=='MODE_HOME' }">--%>
<%--        <div class="container" id="homediv">--%>
<%--            <div class="jumbotron text-center">--%>
<%--                <h1>Welcome to Tecno-tab</h1>--%>
<%--                <h3>Subscribe my channel to support me</h3>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--    </c:when>--%>

    <c:when test="${mode=='MODE_REGISTER' }">
        <div class="container text-center">
            <h3>New Registration</h3>
            <hr>
            <form class="form-horizontal" method="POST" action="save-user">
                <input type="hidden" name="id" value="${user.id }" />
                <div class="form-group">
                    <label class="control-label col-md-3">Username</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="username"
                               value="${user.username }" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">First Name</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="firstname"
                               value="${user.firstname }" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Last Name</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="lastname"
                               value="${user.lastname }" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Age </label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="age"
                               value="${user.age }" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Password</label>
                    <div class="col-md-7">
                        <input type="password" class="form-control" name="password"
                               value="${user.password }" />
                    </div>
                </div>
                <div class="form-group ">
                    <input type="submit" class="btn btn-primary" value="Register" />
                </div>
            </form>
        </div>
    </c:when>
<%--    <c:when test="${mode=='ALL_USERS' }">--%>
<%--        <div class="container text-center" id="tasksDiv">--%>
<%--            <h3>All Users</h3>--%>
<%--            <hr>--%>
<%--            <div class="table-responsive">--%>
<%--                <table class="table table-striped table-bordered">--%>
<%--                    <thead>--%>
<%--                    <tr>--%>
<%--                        <th>Id</th>--%>
<%--                        <th>UserName</th>--%>
<%--                        <th>First Name</th>--%>
<%--                        <th>LastName</th>--%>
<%--                        <th>Age</th>--%>
<%--                        <th>Delete</th>--%>
<%--                        <th>Edit</th>--%>
<%--                    </tr>--%>
<%--                    </thead>--%>
<%--                    <tbody>--%>
<%--                    <c:forEach var="user" items="${users }">--%>
<%--                        <tr>--%>
<%--                            <td>${user.id}</td>--%>
<%--                            <td>${user.username}</td>--%>
<%--                            <td>${user.firstname}</td>--%>
<%--                            <td>${user.lastname}</td>--%>
<%--                            <td>${user.age}</td>--%>
<%--                            <td> <a href="/delete-user?id=${user.id }"> <span--%>
<%--                                    class="fa fa-trash"></span></a></td>--%>
<%--                            <td><a href="/edit-user?id=${user.id }"><span--%>
<%--                                     class="fa fa-pencil-square-o"></span></a></td>--%>
<%--                        </tr>--%>
<%--                    </c:forEach>--%>
<%--                    </tbody>--%>
<%--                </table>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </c:when>--%>

<%--    <c:when test="${mode=='MODE_UPDATE' }">--%>
<%--        <div class="container text-center">--%>
<%--            <h3>Update User</h3>--%>
<%--            <hr>--%>
<%--            <form class="form-horizontal" method="POST" action="save-user">--%>
<%--                <input type="hidden" name="id" value="${user.id }" />--%>
<%--                <div class="form-group">--%>
<%--                    <label class="control-label col-md-3">Username</label>--%>
<%--                    <div class="col-md-7">--%>
<%--                        <input type="text" class="form-control" name="username"--%>
<%--                               value="${user.username }" />--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="form-group">--%>
<%--                    <label class="control-label col-md-3">First Name</label>--%>
<%--                    <div class="col-md-7">--%>
<%--                        <input type="text" class="form-control" name="firstname"--%>
<%--                               value="${user.firstname }" />--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="form-group">--%>
<%--                    <label class="control-label col-md-3">Last Name</label>--%>
<%--                    <div class="col-md-7">--%>
<%--                        <input type="text" class="form-control" name="lastname"--%>
<%--                               value="${user.lastname }" />--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="form-group">--%>
<%--                    <label class="control-label col-md-3">Age </label>--%>
<%--                    <div class="col-md-3">--%>
<%--                        <input type="text" class="form-control" name="age"--%>
<%--                               value="${user.age }" />--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="form-group">--%>
<%--                    <label class="control-label col-md-3">Password</label>--%>
<%--                    <div class="col-md-7">--%>
<%--                        <input type="password" class="form-control" name="password"--%>
<%--                               value="${user.password }" />--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="form-group ">--%>
<%--                    <input type="submit" class="btn btn-primary" value="Update" />--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </c:when>--%>

    <c:when test="${mode=='MODE_LOGIN' }">
        <div class="container text-center">
            <h3>User Login</h3>
            <hr>
            <form class="form-horizontal" method="POST" action="/login-user">
                <c:if test="${not empty error }">
                    <div class= "alert alert-danger">
                        <c:out value="${error }"></c:out>
                    </div>
                </c:if>
                <div class="form-group">
                    <label class="control-label col-md-3">Username</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="username"
                               value="${user.username }" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Password</label>
                    <div class="col-md-7">
                        <input type="password" class="form-control" name="password"
                               value="${user.password }" />
                    </div>
                </div>
                <div class="form-group ">
                    <input type="submit" class="btn btn-primary" value="Login" />
                </div>
            </form>
        </div>
    </c:when>
</c:choose>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</body>
</html>