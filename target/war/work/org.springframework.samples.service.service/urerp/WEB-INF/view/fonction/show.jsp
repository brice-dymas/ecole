<%--
    Document   : show
    Created on : Dec 10, 2014, 9:48:58 AM
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
                    <spring:message code="fonction.show.title"/>
                </h4>
                <hr/>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 col-md-offset-4" id="table_show">
                <table class="table table-condensed">
                    <tbody>
                    <tr>
                        <th><spring:message code="fonction.libelle"/> :</th>
                        <td>${fonction.libelle}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>


        <div class="row">
            <div class="col-md-12">
                <hr/>


                <spring:url value="/fonction/delete" var="fonction_delete"/>
                <form:form method="post" commandName="fonction" action="${fonction_delete}">
                    <form:hidden path="id"/>
                    <spring:url value="/fonction/" var="fonction_home"/>
                    <a href="${fonction_home}" class="btn btn-primary  btn-sm">
                        <span class="glyphicon glyphicon-list"></span>
                        <spring:message code="fonction.list"/>
                    </a>
                    <spring:url value="/fonction/${fonction.id}/edit" var="fonction_edit"/>
                    <a href="${fonction_edit}" class="btn btn-default  btn-sm">
                        <span class="glyphicon glyphicon-edit"></span>
                        <spring:message code="action.edit"/>
                    </a>
                    <button type="submit" class="btn btn-default  btn-sm">
                        <span class="glyphicon glyphicon-remove-sign"></span>
                        <spring:message code="action.delete"/>
                    </button>
                </div>
            </div>
        </form:form>
    </tiles:putAttribute>
</tiles:insertDefinition>