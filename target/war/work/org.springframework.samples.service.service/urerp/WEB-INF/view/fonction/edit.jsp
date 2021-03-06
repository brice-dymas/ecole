<%--
    Document   : edit
    Created on : Dec 10, 2014, 9:44:15 AM
    Author     : sando
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<tiles:insertDefinition name="layout">
    <tiles:putAttribute name="body">
        <div class="row">
            <div class="col-md-12">
                <h4>
                    <spring:message code="fonction.edit.title"/>
                </h4>
                <hr/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <spring:url value="/fonction/update" var="fonction_update" htmlEscape="true"/>
                        <form:form method="post" commandName="fonction" action="${fonction_update}">

                            <div class="form-group">
                                <form:label for="libelle" path="">
                                    <spring:message code="fonction.libelle"/>
                                </form:label>
                                <form:input id="libelle" path="libelle" cssClass="form-control"/>
                                <form:errors path="libelle" cssClass="text-danger"/>
                            </div>
                            <form:hidden path="id"/>
                        </div>
                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary btn-sm" >
                                <span class="glyphicon glyphicon-save"></span>
                                <spring:message code="action.edit"/>
                            </button>
                            <spring:url value="/fonction/" var="fonction_home"/>
                            <a href="${fonction_home}" class="btn btn-default  btn-sm">
                                <span class="glyphicon glyphicon-list"></span>
                                <spring:message code="fonction.list"/>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </form:form>
    </tiles:putAttribute>
</tiles:insertDefinition>