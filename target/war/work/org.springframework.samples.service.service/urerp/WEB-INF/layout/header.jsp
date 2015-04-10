<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<spring:url value="/employe/" htmlEscape="true" var="employe_home" />
<spring:url value="/fonction/" htmlEscape="true" var="fonction_home" />
<spring:url value="/" htmlEscape="true" var="home" />

<nav class="navbar navbar-default" id="header_menu">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        <span class="glyphicon glyphicon-user"></span> User: <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Profile</a></li>
                        <li><a href="#">Tabeaux de bord</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Déconnexion</a></li>
                    </ul>
                </li>  
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                    <spring:message code="language.title"/> : 
                    
                    <c:if test="${pageContext.response.locale == 'fr' or pageContext.response.locale == 'fr_FR'}">
                        <img alt="<spring:message code="language.user"/> "  src="<c:url value="/resources/flags/16/France.png"/>"/>
                        </c:if>
                        <c:if test="${pageContext.response.locale == 'en' or pageContext.response.locale == 'en_US' }"> 
                            <img alt="<spring:message code="language.user"/> " src="<c:url value="/resources/flags/16/England.png"/>"/>
                        </c:if>
                      <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#" class="disabled"></a></li>
                            <c:if test="${pageContext.response.locale == 'fr' or pageContext.response.locale == 'fr_FR'}">
                            <li>                          
                                <a href="?language=en">

                                    <img alt="<spring:message code="language.user"/> " src="<c:url value="/resources/flags/16/England.png"/>"/>
                                    <spring:message code="language.user"/>  
                                </a>
                            </li>
                        </c:if>
                        <c:if test="${pageContext.response.locale == 'en' or pageContext.response.locale == 'en_US' }">                          <li>
                            <li>
                                <a href="?language=fr">
                                    <img alt="<spring:message code="language.user"/> "  src="<c:url value="/resources/flags/16/France.png"/>"/>
                                    <spring:message code="language.user"/>
                                </a>    
                            </li>
                        </c:if>
                    </ul>
                </li>  
                
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>