<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="js" value="/resources/js"></spring:url>
<spring:url var="images" value="/resources/images"></spring:url>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Front - ${title }</title>
<script type="text/javascript">
		window.menu = '${title }';
	</script>
<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css }/main.css" rel="stylesheet">

<!-- Bootstrap Theme for project -->
<link href="${css }/bootstrap.min-theme.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">
		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<div class="content">
			<!-- Show only when user enters into home page -->
			<c:if test="${onClickHome  == true}">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Show contact page when user clicks on contact nav item -->
			<c:if test="${onClickContact == true}">
				<%@include file="contact.jsp"%>
			</c:if>

			<!-- Show About page when user clicks on about nav item -->
			<c:if test="${onClickAbout == true}">
				<%@include file="about.jsp"%>
			</c:if>
		</div>


		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<script src="${js }/jquery.js"></script>
		<script src="${js }/bootstrap.bundle.min.js"></script>
		<!-- custom javascript -->
		<script src="${js }/main.js"></script>
	</div>
</body>

</html>
