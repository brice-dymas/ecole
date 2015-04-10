<%--
    Document   : new
    Created on : Dec 10, 2014, 9:20:13 AM
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
                    <spring:message code="modePaiement.new.title"/>
                </h4>
                <hr/>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <spring:url value="/modePaiement/create" var="modePaiement_save"
                            htmlEscape="true" />
                <form:form method="post" commandName="modePaiement" action="${modePaiement_save}">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            ${libelle.error}
                            <div class="form-group">
                                <form:label for="libelle" path="">
                                    <spring:message code="modePaiement.libelle"/>
                                </form:label>
                                <form:input id="libelle" path="libelle" cssClass="form-control"/>
                                <form:errors path="libelle" cssClass="text-danger"/>
                            </div>
                        </div>

                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary btn-sm" >
                                <span class="glyphicon glyphicon-save"></span>
                                <spring:message code="action.save"/>
                            </button>
                            <spring:url value="/modePaiement/" var="modePaiement_home"/>
                            <a href="${modePaiement_home}" class="btn btn-default  btn-sm">
                                <span class="glyphicon glyphicon-list"></span>
                                <spring:message code="modePaiement.list"/>
                            </a>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>

    </tiles:putAttribute> 
</tiles:insertDefinition> 