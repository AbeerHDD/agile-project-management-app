<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<sql:setDataSource 
 var="source" 
 url="jdbc:mysql://localhost/projet_scrum"
 driver="com.mysql.jdbc.Driver"
	user="root" />
<sql:update dataSource="${source }">
insert into projet (nom,description,datedebut,deadline) values('<c:out value="${param.nom}" />','<c:out value="${param.description}"/>','<c:out value="${param.datedebut}"/>','<c:out value="${param.deadline}"/>')
</sql:update>
 <c:redirect url="liste-projet.jsp"/>