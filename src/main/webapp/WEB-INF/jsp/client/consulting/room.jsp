<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/admin/img/logo/logo.png" rel="icon">
<link href="${pageContext.request.contextPath}/resources/admin/vendor/fontawesome-free/css/all.min.css"
      rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/admin/css/ruang-admin.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css2/nice-select.css">
</head>
<body>


<div id="chatView" class="row mb-3">




</div>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
/* 채팅 상담 화면 불러오기 */
$.ajax({
	type : "POST",
	url : "${pageContext.request.contextPath}/moveChatting",
	contentType : "application/json; charset=utf-8;",
	success : function(res) {
		console.log('ajax통신 성공')
		$('#chatView').append(res)

	}
});

</script>

</html>