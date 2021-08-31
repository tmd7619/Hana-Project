<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 기본 java 라이브러리 -->
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.*"%>
<%@ page import="java.text.*"%>

<!-- JSON 라이브러리 (필수) -->
<%@ page import="org.json.simple.*"%>
<%@ page import="org.json.simple.parser.*"%>

<!-- 커스텀 클래스 파일 (필수) -->
<%@ page import="Multipart.HttpPostMultipart"%>

<%
////////////////////////////////////////////
//[문자 - 발송 요청]
////////////////////////////////////////////

// 헤더값 설정
Map<String, String> headers = new HashMap<String, String>();
HttpPostMultipart multipart = new HttpPostMultipart("https://balsong.com/Linkage/API/", "utf-8", headers);
   
//데이터 (요청변수 대소문자 구분)
multipart.addFormField("UserID", "test");									// 사용자 계정
multipart.addFormField("UserPW", "test");									// 사용자 암호
multipart.addFormField("Service", "SMS");									// SMS:단문, LMS:장문, MMS:멀티(장문+이미지)
multipart.addFormField("Type", "Send");										// Send 기입
multipart.addFormField("Send_Date", "");									// 발송시각 - 미입력 시 즉시발송, 예약 날짜형식) YYYY-MM-DD HH:NN
multipart.addFormField("Callback", "01000000000");							// 발신번호
multipart.addFormField("Subject", "API 문자 발송 테스트 예제입니다.");				// 발송 제목
multipart.addFormField("Main_Text", "API 문자발송 테스트 예제\n\n기본 문자내용입니다."); // 기본 문자내용
   
// 데이터 - 수신처
JSONObject Dest1 = new JSONObject();
Dest1.put("Company","테스트1");
Dest1.put("Name","수신자1");
Dest1.put("Phone","01000000000");

JSONObject Datas1 = new JSONObject();
Datas1.put("Key", "#{회사명}");
Datas1.put("Value", "테스터1");

JSONObject Datas2 = new JSONObject();
Datas2.put("Key", "#{이름}");
Datas2.put("Value", "수신자1");

JSONObject Datas3 = new JSONObject();
Datas3.put("Key", "#{기타1}");
Datas3.put("Value", "반갑습니다");

JSONArray Rpl_Data = new JSONArray();
Rpl_Data.add(Datas1);
Rpl_Data.add(Datas2);
Rpl_Data.add(Datas3);

Dest1.put("Replace_Datas", Rpl_Data);

JSONArray DestArr = new JSONArray();
DestArr.add(Dest1);

multipart.addFormField("Destination", DestArr.toString());
   
// MMS의 경우 이미지 추가 - 총 3장까지 가능 (이미지 경로의 주의)
//multipart.addFilePart("Image1", new File("이미지 파일 경로1"));
//multipart.addFilePart("Image2", new File("이미지 파일 경로2"));
//multipart.addFilePart("Image3", new File("이미지 파일 경로3"));

// 응답 값
String ResultJson = multipart.finish();
 
// Json parse (json.simple 라이브러리)
JSONParser jsonParse = new JSONParser();
JSONObject ObjToJson = (JSONObject) jsonParse.parse(ResultJson);


// 결과값 불러오기 실패 시
if( !ObjToJson.get("Result").equals("OK") ){
	out.println("<table border='1'>");
	out.println("<tr><th>결과</th><th>코드</th><th>잔액</th><th>서비스</th><th>실패사유</th></tr>");
	out.println("<tr><td>" + ObjToJson.get("Result") + "</td><td>" + ObjToJson.get("Code") + "</td><td>" + ObjToJson.get("Cash") + "</td><td>" + ObjToJson.get("Service") + "</td><td>" + ObjToJson.get("Message") + "</td></tr>");
	out.println("</table>");
	
	if(true){ return; }
}
%>


<!-- 발송결과 화면 출력 -->
<table border='1' cellpadding='0' cellspacing='0' width='100%'>
	<tr>
		<th>결과</th>
		<th>코드</th>
		<th>잔액</th>
		<th>서비스</th>
		<th>접수번호</th>
	</tr>
	<tr>
		<td><%=ObjToJson.get("Result")%></td>
		<td><%=ObjToJson.get("Code")%></td>
		<td><%=ObjToJson.get("Cash")%></td>
		<td><%=ObjToJson.get("Service")%></td>
		<td><%=ObjToJson.get("Job_No")%></td>
	</tr>
</table>



