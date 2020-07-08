<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Paramètre des utilisateurs</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/style.css"/>" />
</head>
<body>
<form:form modelAttribute="membre" method="post" action="${pageContext.servletContext.contextPath}/membre/${idBloquer}">
<div class="div">
	<table> 
	<tr> 	
	</tr>
		<tr>
			<td> Membres </td>
		</tr>
			<c:forEach items="${users}" var="i">
					<tr >
						<td colspan="2"  class="border">ID : ${i.id}   / NOM : ${i.nom}</td>		 
					</td>
					<td>							
						<a href="${pageContext.servletContext.contextPath}/membre/${i.id}" >Bloque</a></td> 						
					</tr>
			</c:forEach>				
	</table>
</div>
</form:form>
</body>
</html>