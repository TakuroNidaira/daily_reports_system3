<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<label for="report_date">日付</label><br />
<input type="date" name="report_date" value="<fmt:formatDate value='${report.report_date}' pattern='yyyy-MM-dd' />" />
<br /><br />

<label for="name">氏名</label><br />
<c:out value="${sessionScope.login_employee.name}" />
<br /><br />

<label for="title">タイトル</label><br />
<input type="text" name="title" value="${report.title}" />
<br /><br />

<label for="content">プロジェクト名</label><br />
<input type="text" name="project_name" value="${report.project_name}" />
<br /><br />

<label for="progress">プロジェクト状況</label><br />
<select name="progress">
    <option value="0"<c:if test="${report.progress == 0}"> selected</c:if>>〇</option>
    <option value="1"<c:if test="${report.progress == 1}"> selected</c:if>>△</option>
    <option value="2"<c:if test="${report.progress == 2}"> selected</c:if>>✖</option>
</select>
<br /><br />
<div>
    （〇: On schedule、△: Behind schedule(挽回策有り)、✖: Behind schedule(挽回策無し)）
</div>
<br /><br />

<label for="content">内容</label><br />
<textarea name="content" rows="10" cols="50">${report.content}</textarea>
<br /><br />

<label for="report_date">始業時間</label><br />
<input type="time" name="start_time" value="<fmt:formatDate value='${report.start_time}' pattern='HH:mm' />" />
<br /><br />

<label for="report_date">終業時間</label><br />
<input type="time" name="end_time" value="<fmt:formatDate value='${report.end_time}' pattern='HH:mm' />" />
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>