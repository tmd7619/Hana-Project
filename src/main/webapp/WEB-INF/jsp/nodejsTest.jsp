<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>소켓 서버</title>
    </head>
    <body>
    
    
        <script src="https://192.168.0.129:8000/socket.io/socket.io.js"></script>
        <script src="https://code.jquery.com/jquery-1.11.1.js"></script>
        <script>
            $(document).ready(function(){
                var socket = io("https://192.168.0.129:8000");
                console.log(socket);
            });
            
        </script>
    </body>
</html>
