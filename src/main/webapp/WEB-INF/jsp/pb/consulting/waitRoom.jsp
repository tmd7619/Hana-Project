<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .spinner-border {
            color: #27b2a5;
            width: 100%;
            text-align: center;
        }

        #loader {
            margin-top: 30px;
            width: 70px;
            height: 70px;
        }

        .waitMent {
            text-align: center;
            margin-top: 250px;
        }
    </style>

</head>
<body>


<jsp:include page="/WEB-INF/jsp/common/pbHeader.jsp"/>
<%--    <div id="ftco-loader" class="show fullscreen">--%>
<%--        <svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#27b2a5"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#27b2a5"/>--%>
<%--        </svg>--%>
<%--    </div>--%>
<div>
    <div class="waitMent">
        <h2>잠시 대기해주세요. 고객님께서 들어오고 있습니다.</h2>
    </div>
    <div class="d-flex justify-content-center" style="margin-bottom: 1200px;">
        <div id="loader" class="spinner-border" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">

    $(document).ready(function () {
        Kakao.init('776599c73bff8f5f8777fca7628749ca');
        var TempleCode = 62081;

        Kakao.Auth.login({
            scope: "talk_message",
            success: function (res) {
                Kakao.API.request({
                    url: '/v2/api/talk/memo/send',
                    data: {
                        template_id: 62081,
                    },
                    success: function (response) {
                        console.log(response);
                        alert('발송성공')
                    },
                    fail: function (error) {
                        console.log(error);
                    },
                });
            }


        })


        // Kakao.Link.sendCustom({
        //     templateId: 62081   // 15번 항목에서 확인하였던 이벤트번호 등록
        // });
    })
</script>


<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>

</script>

</html>
