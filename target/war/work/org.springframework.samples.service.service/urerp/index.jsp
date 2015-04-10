<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url value="fonction/" htmlEscape="true" var="fonction_home"/>
<spring:url value="conditionnement/" htmlEscape="true" var="conditionnement_home"/>
<spring:url value="modePaiement/" htmlEscape="true" var="modePaiement_home"/>

<%-- <c:redirect url="${fonction_home}"/> --%>

<ol>
  <li>
  	<a href="${fonction_home}"> Fonctions</a>
  </li>
  <li>
  	<a href="${conditionnement_home}"> Conditionnements</a>
  </li>
   <li>
  	<a href="${modePaiement_home}"> Modes de Paiement</a>
  </li>
</ol>

