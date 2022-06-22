<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク新規登録ページ</h2>

        <c:if test="${error != null}">
    		<div id="flush_error">
        		入力内容にエラーがあります。<br />
        		・<c:out value="${error}" /><br />
    		</div>
		</c:if>

        <form method="POST" action="${pageContext.request.contextPath}/create">
            <label for="content">タスク</label><br />
			<input type="text" name="content" value="${task.content}" />
			<br /><br />

			<input type="hidden" name="_token" value="${_token}" />
			<button type="submit">登録</button>
        </form>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>

    </c:param>
</c:import>