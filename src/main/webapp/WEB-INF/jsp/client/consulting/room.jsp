<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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

<div>
    <iframe id="webrtc" src="https://localhost:8000/"
    <%--    <iframe id="webrtc" src="https://3874-117-111-17-101.ngrok.io"--%>
            allow="camera *;microphone *;autoplay;display-capture;fullscreen"
            style="border: 2px solid black;width: 1000px; height: 450px">
    </iframe>
</div>
<div id="chatView" class="row mb-3">


</div>

</body>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script>
    var socket2 = null
    $(document).ready(function () {
        sock2 = new SockJS("${pageContext.request.contextPath}/createRoom");
        console.log('sock2 초기화됨')
        socket2 = sock2;
    })
    setTimeout(function () {
        socket2.send("윤승원,김피비,10 : 10,상담 요청")
    }, 3000);

    /* 채팅 상담 화면 불러오기 */
    $.ajax({
        type: "POST",
        url: "${pageContext.request.contextPath}/moveChatting",
        contentType: "application/json; charset=utf-8;",
        success: function (res) {
            console.log('ajax통신 성공')
            $('#chatView').append(res)

        }
    });
</script>

</html>