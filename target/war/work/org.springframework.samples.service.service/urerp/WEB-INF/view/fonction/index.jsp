<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<tiles:insertDefinition name="layout">
    <tiles:putAttribute name="body">
        <div class="row">
            <div class="col-lg-9">
                <div class="row">
                    <div class="col-lg-12">

                        <h4>
                            <spring:message code="fonction.list.title"/>
                        </h4>
                        <hr/>




                        <div class="dropdown pull-right ">
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                                <spring:message code="action.length" />
                                 : ${size}&nbsp;
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="?query=${query}&size=5">5</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="?query=${query}&size=10">10</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="?query=${query}&size=20">20</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="?query=${query}&size=30">30</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="?query=${query}&size=40">40</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="?query=${query}&size=50">50</a></li>
                            </ul>
                        </div>




                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>
                                        <spring:message code="fonction.id"/>
                                    </th>

                                    <th>
                                        <spring:message code="fonction.libelle"/>
                                    </th>
                                    <th>
                                        <spring:message code="action.title"/>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${fonctions}" var="fonction">
                                    <tr>
                                        <td>
                                            ${fonction.id}
                                        </td>
                                        <td>
                                            ${fonction.libelle}
                                        </td>
                                        <td>
                                            <spring:url value="/fonction/${fonction.id}/edit" htmlEscape="true" var="fonction_edit" />
                                            <a href="${fonction_edit}" class="btn btn-primary btn-xs">
                                                <span class="glyphicon glyphicon-edit"></span>
                                                <spring:message code="action.edit"/>
                                            </a>
                                            &nbsp;&nbsp;
                                            <spring:url value="/fonction/${fonction.id}/show" htmlEscape="true" var="fonction_show" />
                                            <a href="${fonction_show}" class="btn btn-primary btn-xs">
                                                <span class="glyphicon glyphicon-open"></span>
                                                <spring:message code="action.detail"/>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>

                        </table>

                    </div>
                </div>



                <div class="row">
                    <div class="col-lg-12">
                        <spring:url value="/fonction/new" htmlEscape="true" var="fonction_new" />
                        <a href="${fonction_new}" class="btn btn-primary btn-sm">
                            <span class="glyphicon glyphicon-new-window"></span>
                            <spring:message code="action.nouvo"/>
                        </a>

                        <div class="pull-right">
                            <ul class="pager">

                                <li><a href="?query=${query}&page=0&size=${size}" <c:if test="${page eq 0}">class ="btn btn-sm disabled"</c:if>>
                                            <span class="glyphicon glyphicon-fast-backward"></span>
                                        </a></li>
                                    <li><a href="?query=${query}&page=${page-1}&size=${size}" <c:if test="${page eq 0}">class ="btn btn-sm disabled"</c:if>>
                                            <span class="glyphicon glyphicon-backward"></span>
                                        </a></li>
                                    <li><input type="text" class="pager_detail text-center" value="${page+1}/${Totalpage}"/></li>
                                <li><a href="?query=${query}&page=${page+1}&size=${size}" <c:if test="${page+1 eq Totalpage}">class ="btn btn-sm disabled"</c:if>>
                                            <span class="glyphicon glyphicon-forward"></span>
                                        </a></li>
                                    <li><a href="?query=${query}&page=${Totalpage-1}&size=${size}" <c:if test="${page+1 eq Totalpage}">class ="btn btn-sm disabled"</c:if>>
                                            <span class="glyphicon glyphicon-fast-forward"></span>
                                        </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-lg-3">
                    <h4>
                    <spring:message code="search.title"/> :
                </h4>
                <hr/>
                <spring:url value="/fonction/" htmlEscape="true" var="fonction_home" />
                <form action="${fonction_home}" method="get">
                    <div class="form-group">
                        <label for="query">
                        	<spring:message code="action.libelle"/>
                        </label>
                        <input type="text" class="form-control" name="query" value="${query}" id="query" placeholder="...">
                        <input type="hidden" name="size" value="${size}" class="form-control" id="query" placeholder="...">
                    </div>

                    <button type="submit" class="btn btn-sm btn-default">
                        <span class="glyphicon glyphicon-search"></span>&nbsp;
                        <spring:message code="action.filter"/>
                    </button>
                        <a href="?query=&size=${size}" class="btn btn-default btn-sm">
                            <span class="glyphicon glyphicon-refresh"></span>&nbsp;
                            <spring:message code="action.delete"/>
                    </a>
                    <hr/>
                </form>
            </div>
        </div>

    </tiles:putAttribute>
</tiles:insertDefinition>