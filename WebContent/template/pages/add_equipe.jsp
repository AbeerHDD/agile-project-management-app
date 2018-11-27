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
insert into equipe(nom,nbrmembre) values('<c:out value="${param.nom}" />','<c:out value="${param.nbrmembre}"/>')
</sql:update>
 <c:redirect url="liste-equipe.jsp"/>
<%-- <c:if test="${param.b}" > --%>
<%-- <c:redirect url="show_livre.jsp"/> --%>
<%-- </c:if> --%>
<%-- <c:if test="${param.a}"> --%>
<%-- <c:redirect url="ajouter_livre.jsp"/> --%>
<%-- </c:if> --%>