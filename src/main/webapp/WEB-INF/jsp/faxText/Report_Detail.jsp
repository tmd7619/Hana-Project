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
<%@ page import="Multipart.HttpPostMultipart" %>

<%
////////////////////////////////////////////
//[문자 - 상세결과목록 요청]
////////////////////////////////////////////

// 헤더값 설정
Map<String, String> headers = new HashMap<String, String>();
HttpPostMultipart multipart = new HttpPostMultipart("https://balsong.com/Linkage/API/", "utf-8", headers);

//기본정보 변수 선언
String List_EA;
String Page;
String JobNo;
String Search_Field;
String Search_Word;

if ( request.getParameter("List_EA") 	  == null ) List_EA = "15"; 		else 	List_EA = request.getParameter("List_EA");
if ( request.getParameter("page")	 	  == null ) Page = "1"; 			else 	Page = request.getParameter("page");
if ( request.getParameter("JobNo")  	  == null ) JobNo = ""; 			else 	JobNo = request.getParameter("JobNo");
if ( request.getParameter("Search_Field") == null ) Search_Field = ""; 		else 	Search_Field = request.getParameter("Search_Field");
if ( request.getParameter("Search_Word")  == null ) Search_Word = ""; 		else 	Search_Word = request.getParameter("Search_Word");

//데이터 (요청변수 대소문자 구분)
multipart.addFormField("UserID", "test");					// 사용자 계정
multipart.addFormField("UserPW", "test");					// 사용자 암호
multipart.addFormField("Service", "SMS");					// 결과목록은 SMS/LMS/MMS 를 함께 출력하므로, 3개중 아무거나 입력해도 됨
multipart.addFormField("Type", "Report_Detail");			// Report 기입
multipart.addFormField("List_EA", List_EA);					// 조회할 목록개수
multipart.addFormField("Page", Page); 						// 발송결과 목록 페이징
multipart.addFormField("Job_No", JobNo); 					// 발송번호
multipart.addFormField("Search_Field", Search_Field);		// 검색필드 Subject:발송제목, Job_No:발송번호, Main_Text:발송내용, Company:상호명, Name:수신자명, Phone:휴대폰번호
multipart.addFormField("Search_Word", new String (Search_Word.getBytes("8859_1"), "UTF-8")); 		// 검색어

// 응답 값
String ResultJson = multipart.finish();
   
// Json parse (json.simple 라이브러리)
JSONParser jsonParse = new JSONParser();
JSONObject ObjToJson = (JSONObject) jsonParse.parse(ResultJson);
JSONArray ArrToObj = (JSONArray) ObjToJson.get("List");

// 결과값 불러오기 실패 시
if( !ObjToJson.get("Result").equals("OK") ){
	out.println("<table border='1'>");
	out.println("<tr><th>결과</th><th>코드</th><th>잔액</th><th>서비스</th><th>실패사유</th></tr>");
	out.println("<tr><td>" + ObjToJson.get("Result") + "</td><td>" + ObjToJson.get("Code") + "</td><td>" + ObjToJson.get("Cash") + "</td><td>" + ObjToJson.get("Service") + "</td><td>" + ObjToJson.get("Message") + "</td></tr>");
	out.println("</table>");
	
	if(true){ return; }
}

//이미지가 있을 경우
String ImageBox ="";
JSONArray ImgArrToObj = (JSONArray) ObjToJson.get("Image");
if ( ImgArrToObj.size() != 0 ){
	for ( int i = 0; i < ImgArrToObj.size(); i++ ){
		JSONObject ResultObj = (JSONObject) ImgArrToObj.get(i);
		ImageBox += "<img src='" + ResultObj.get("Data") + "' />";
	}
}

//페이징 숫자
String Paging = "";
for (int i = 1; i <= (Long) ObjToJson.get("Total_Page"); i++ ){
	Paging += "<a href='" + request.getRequestURL() + "?page=" + i + "&JobNo=" + JobNo + "&List_EA=" + List_EA + "&Search_Field=" + Search_Field + "&Search_Word=" + Search_Word + "'>" + i + "</a>";
}


//출력 목록
String ResultTr = "";
for (int i = 0; i < Integer.parseInt(List_EA); i++){
	if ( i >= ArrToObj.size() ) { continue; }
	JSONObject ResultObj = (JSONObject) ArrToObj.get(i);
	
	ResultTr += "<tr>";
	ResultTr += "<td>" + ResultObj.get("No") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Group") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Company") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Name") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Phone") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Msg_Text") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Status") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Status_Detail") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Done_Date") + "</td>";
	ResultTr += "</tr>";
}

//select 선택
String LE1 = "";
String LE2 = "";
String LE3 = "";
String LE4 = "";
switch (Integer.parseInt(List_EA)) {
	case 30 	: LE2 = "selected"; break;
	case 50 	: LE3 = "selected"; break;
	case 100 	: LE4 = "selected"; break;
	default 	: LE1 = "selected"; 
}

String SF1 = "";
String SF2 = "";
String SF3 = "";
if 		( Search_Field.equals("Name") ) 	{ SF2 = "selected"; }
else if ( Search_Field.equals("Phone") )	{ SF3 = "selected"; }
else 	{ SF1 = "selected"; }
%>

<!-- 화면 출력 구성 -->
<div style='width:200px; display:inline-block; border:1px solid #202020; padding:5px; vertical-align:top;'>
	<div>
		<p style='font-size:12px;'>발송제목 : <%=ObjToJson.get("Subject")%> <br/>
		발송번호 : <%=ObjToJson.get("Job_No")%><br/>
		서비스 : <%=ObjToJson.get("Service")%>	<br/>
		결과 : <%=ObjToJson.get("Result")%><br/>
		코드 : <%=ObjToJson.get("Code")%><br/>
		</p>
	</div>
	
	<div style='width:200px; height:300px; overflow:scroll;'>
		<%=ImageBox%>
	</div>
	
	<textarea style='width:200px; height:200px; resize:none; overflow-y:scroll;'><%=ObjToJson.get("Main_Text")%></textarea>
</div>

<div style='display:inline-block; width:1000px; border:1px solid #202020; padding:5px;'>
	<form method='GET' id='search' name='search' action='<%=request.getRequestURL()%>' style='display:inline-block;'>
		<div>
			<input type='hidden' name='JobNo' value='<%=JobNo%>'>
			
			<select name='List_EA' onchange="document.getElementById('search').submit();">
				<option value='15'  <%=LE1%>>15개씩</option>
				<option value='30'  <%=LE2%>>30개씩</option>
				<option value='50'  <%=LE3%>>50개씩</option>
				<option value='100' <%=LE4%>>100개씩</option>
			</select>
			
			<select name='Search_Field'>
				<option value='Company' <%=SF1%>>수신회사명</option>
				<option value='Name' 	<%=SF2%>>수신자명</option>
				<option value='Phone' 	<%=SF3%>>수신번호</option>
			</select>
			
			<input type='text' name='Search_Word' value='<%=new String (Search_Word.getBytes("8859_1"), "UTF-8")%>'>
			
			<input type='submit' value='조회'>
		</div>
	</form>


	<div style='display:inline-block;'>총 목록수 <%=ObjToJson.get("Total_Cnt")%> / 총 페이지 수 <%=ObjToJson.get("Total_Page")%> / 현재 페이지 번호 <%=ObjToJson.get("Now_Page")%></div>
	
	<table border='1' style='display:inline-block;' cellpadding='0' cellspacing='0' >
		<tr>
			<th >No</th>
			<th >그룹</th>
			<th >회사명</th>
			<th >수신자명</th>
			<th >휴대폰번호</th>
			<th >보낸 내용</th>
			<th >결과</th>
			<th >상세결과</th>
			<th >완료시각</th>
		</tr>
		<%=ResultTr%>
	</table>
	<br/>
	<br/>
	<center><%=Paging%></center>
</div>