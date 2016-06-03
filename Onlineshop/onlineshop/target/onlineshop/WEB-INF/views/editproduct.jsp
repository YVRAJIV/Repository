<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>




<%-- <link href="<c:url value="/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/bootstrap-3.3.6/js/bootstrap.min.js"/>"></script> --%>
 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>
<form:form commandName="prd" cssClass="form-horizontal" action="addProduct" method="POST">

<div class="form-group">
<label for="id" class="col-sm-2 control-label"> Id:</label>
<div class="col-sm-10">
<form:hidden path="id" cssClass="form-control"/>

</div>
</div>
<div class="form-group">
<label for="productname" class="col-sm-2 control-label"> ProductName:</label>
<div class="col-sm-10">
<form:input path="productname" cssClass="form-control"/>

</div>
</div>
<div class="form-group">
<label for="description" class="col-sm-2 control-label"> Description:</label>
<div class="col-sm-10">
<form:password path="description" cssClass="form-control"/>

</div>

</div>

<div class="form-group">
<label for="price" class="col-sm-2 control-label"> Price:</label>
<div class="col-sm-10">
<form:input path="price" cssClass="form-control"/>

</div>

</div>
<div class="form-group">
<div class="col-sm-2">
<input type="submit" value="Add" class="btn btn-primary"/>

</div>
<div class="col-sm-2">
<input type="submit" value="Update" class="btn btn-primary"/>

</div>


</div>

</form:form>


</body>
</html>