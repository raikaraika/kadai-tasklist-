<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}">
                <h2>id : ${task.id} のタスク編集ページ</h2>

                <form method="POST" action="${pageContext.request.contextPath}/update">
                 	<c:if test="${error != null}">
   						 <div id="flush_error">
        					入力内容にエラーがあります。<br />
            				・<c:out value="${error}" /><br />

    					</div>
					</c:if>
                    <label for="content">タスク</label><br />
						<input type="text" name="content" value="${task.content}" />
						<br /><br />

					<input type="hidden" name="_token" value="${_token}" />
						<button type="submit">登録</button>
                </form>

                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
                <p><a href="#" onclick="confirmDestroy();">このタスクを削除する</a></p>
                <form method="POST" action="${pageContext.request.contextPath}/destroy">
                    <input type="hidden" name="_token" value="${_token}" />
                </form>
                <script>
                    function confirmDestroy() {
                        if(confirm("本当に削除してよろしいですか？")) {
                            document.forms[1].submit();
                        }
                    }
                </script>
            </c:when>
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>