<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Chating</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .container {
            width: 500px;
            margin: 0 auto;
            padding: 25px
        }

        .container h1 {
            text-align: left;
            padding: 5px 5px 5px 15px;
            color: #27b2a5;
            /*border-left: 3px solid #008485;*/
        }

        .chating {
            background-color: #e6efef;
            width: 300px;
            height: 300px;
            overflow: auto;
            padding-bottom: 50px;
        }

        .chating .me {
            color: #3c3c3c;
            text-align: right;
            word-break: keep-all;

            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px;

            position: relative;
            padding: 9px 0 6px;
            margin: 5px 5px 15px 50px;
            background: #fff;
            top: 0;
            z-index: 5;
        }

        .chating .others {
            color: #008485;
            text-align: left;

            border-top-right-radius: 10px;
            border-bottom-right-radius: 10px;

            position: relative;
            padding: 9px 0 6px;
            margin: 5px 50px 15px 5px;
            background: #fff;
            top: 0;
            z-index: 5;


        }

        input {
            width: 180px;
            height: 25px;
        }

        #yourMsg {
            display: none;
        }

        #bubble {
            color: #27b2a5;
        }


    </style>
</head>

<script type="text/javascript">
    var ws;

    function wsOpen() {
        //????????? ????????? ?????? ?????? ????????? ????????? ?????????.
        ws = new WebSocket("wss://" + "192.168.0.15:443:" + "/chating/" + $("#roomNumber").val());
        wsEvt();
    }

    function wsEvt() {
        ws.onopen = function (data) {
            //????????? ????????? ??????
        }

        ws.onmessage = function (data) {
            //???????????? ????????? ??????
            var msg = data.data;
            if (msg != null && msg.trim() != '') {
                var d = JSON.parse(msg);
                if (d.type == "getId") {
                    var si = d.sessionId != null ? d.sessionId : "";
                    if (si != '') {
                        $("#sessionId").val(si);
                    }
                } else if (d.type == "message") {
                    if (d.sessionId == $("#sessionId").val()) {
                        $("#chating").append("<p class='me'>?????? :" + d.msg + "</p>");
                    } else {
                        $("#chating").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>");
                    }

                } else {
                    console.warn("unknown type!")
                }
            }
        }

        document.addEventListener("keypress", function (e) {
            if (e.keyCode == 13) { //enter press
                send();
            }
        });
    }

    function chatName() {
        var userName = $("#userName").val();
        console.log("?????? ????????? ???" + userName)
        if (userName == null || userName.trim() == "") {
            alert("????????? ????????? ??????????????????.");
            $("#userName").focus();
        } else {
            wsOpen();
            $("#yourName").hide();
            $("#yourMsg").show();
        }
    }

    function send() {
        var option = {
            type: "message",
            roomNumber: $("#roomNumber").val(),
            sessionId: $("#sessionId").val(),
            userName: $("#userName").val(),
            msg: $("#chatting").val(),
        }
        ws.send(JSON.stringify(option))
        $('#chatting').val("");
    }
</script>
<body>
<div id="container" class="container">
    <i id="bubble" class="fas fa-comments fa-2x text-warning"></i>
    <h1>${roomName} PB??? ?????? ??????</h1>
    <input type="hidden" id="sessionId" value="">
    <input type="hidden" id="roomNumber" value="${roomNumber}">

    <div id="chating" class="chating">
    </div>

    <div id="yourName">
        <table class="inputTable">
            <tr>
                <th>????????????</th>
                <th><input type="text" name="userName" id="userName"></th>
                <th>
                    <button onclick="chatName()" id="startBtn">????????????</button>
                </th>
            </tr>
        </table>
    </div>
    <div id="yourMsg">
        <table class="inputTable">
            <tr>
                <th>?????????</th>
                <th><input id="chatting" placeholder="????????? ???????????? ???????????????."></th>
                <th>
                    <button onclick="send()" id="sendBtn">?????????</button>
                </th>
                <th>
                    <button class="" f></button>
                </th>
            </tr>
        </table>
    </div>
</div>
</body>
</html>