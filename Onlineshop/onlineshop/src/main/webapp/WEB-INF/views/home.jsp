

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%--     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">Shop</a>
      
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
     </ul>
    <ul class="nav navbar-nav navbar-right">
<!--     **************************** -->
    <h1>Title : ${title}</h1>
	<h1>Message : ${message}</h1>

	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script> 
    <c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>
			Welcome : ${pageContext.request.userPrincipal.name} | <a href="javascript:formSubmit()"> Logout</a>
		</h2>
	</c:if>
	<!-- *********************** -->
	<c:if test="${pageContext.request.userPrincipal.name == null}">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign In</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      
      
    </ul>
  </div>
</nav>


 <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
</div>
<table>
<tr>
<td>
<div  class="container" >
  <h2>USER</h2>
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#collapse1">TRAINING</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse">
        <div class="panel-body">DTT</div>
        <div class="panel-footer">PGP</div>
      </div>
      </div>
      <div class="panel-group">
    <div class="panel panel-default">
 <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#collapse2">TECH</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
      <li><a href="#">Spring</a></li>
    <li><a href="#">Hibernate</a></li>
     </div>
 </div>
</div>
    
    </div>
    </div>
    </td>
    <td>
<div >
<div class="row">
  <div class="col-md-4">
    <a href="Product?name=img1" class="thumbnail">
      <img src="<c:url value="/resources/images/newi1.jpg"/>" alt="guitar" style="width:150px;height:150px">
    </a>
  </div>
  <div class="col-md-4">
    <a href="Product?name=img2" class="thumbnail">
     
      <img src="<c:url value="/resources/images/newi2.jpg"/>" alt="violin" style="width:150px;height:150px">
    </a>
  </div>
  <div class="col-md-4">
    <a href="Product?name=img3" class="thumbnail">
      
      <img src="<c:url value="/resources/images/newi3.jpg"/>" alt="piano" style="width:150px;height:150px">
    </a>
  </div>
</div> 
  </div>
 <td>
</table>
<br>
<br>
 
 <center><a href="Product">All Products</a></center>

</body>
</html>