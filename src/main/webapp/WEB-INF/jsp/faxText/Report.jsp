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
//[문자 - 결과목록 요청]
////////////////////////////////////////////

// 헤더값 설정
Map<String, String> headers = new HashMap<String, String>();
HttpPostMultipart multipart = new HttpPostMultipart("https://balsong.com/Linkage/API/", "utf-8", headers);

//기본정보 변수 선언
String List_EA;
String Page;
String Search_Field;
String Search_Word;
String Term;

if ( request.getParameter("List_EA") 	  == null ) List_EA = "15"; 		else 	List_EA = request.getParameter("List_EA");
if ( request.getParameter("page")	 	  == null ) Page = "1"; 			else 	Page = request.getParameter("page");
if ( request.getParameter("Search_Field") == null ) Search_Field = ""; 		else 	Search_Field = request.getParameter("Search_Field");
if ( request.getParameter("Search_Word")  == null ) Search_Word = ""; 		else 	Search_Word = request.getParameter("Search_Word");
if ( request.getParameter("Term") 		  == null ) Term = "-7"; 			else 	Term = request.getParameter("Term");

//조회구간 날짜 변수
Calendar now = Calendar.getInstance();
now.setTime(new Date());

DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
String Date_End = df.format(now.getTime());

now.add(Calendar.DATE, Integer.parseInt(Term) );
String Date_Start = df.format(now.getTime());


//데이터 (요청변수 대소문자 구분)
multipart.addFormField("UserID", "test");					// 사용자 계정
multipart.addFormField("UserPW", "test");					// 사용자 암호
multipart.addFormField("Service", "SMS");					// 결과목록은 SMS/LMS/MMS 를 함께 출력하므로, 3개중 아무거나 입력해도 됨
multipart.addFormField("Type", "Report");					// Report 기입
multipart.addFormField("Date_Start", Date_Start);			// 조회구간 시작일자 형식) YYYY-MM-DD
multipart.addFormField("Date_End", Date_End);				// 조회구간 종료일자 형식) YYYY-MM-DD
multipart.addFormField("List_EA", List_EA);					// 조회할 목록개수
multipart.addFormField("Page", Page); 						// 발송결과 목록 페이징
multipart.addFormField("Search_Field", Search_Field);		// 검색필드 Subject:발송제목, Job_No:발송번호, Main_Text:발송내용, Company:상호명, Name:수신자명, Phone:휴대폰번호
multipart.addFormField("Search_Word", new String (Search_Word.getBytes("8859_1"), "UTF-8")); 		// 검색어

// 응답 값
String ResultJson = multipart.finish();

// Json parse (json.simple 라이브러리)
JSONParser jsonParse = new JSONParser();
JSONObject ObjToJson = (JSONObject) jsonParse.parse(ResultJson);
JSONArray ArrToObj = (JSONArray) ObjToJson.get("List");

//결과값 불러오기 실패 시
if( !ObjToJson.get("Result").equals("OK") ){
	out.println("<table border='1'>");
	out.println("<tr><th>결과</th><th>코드</th><th>잔액</th><th>서비스</th><th>실패사유</th></tr>");
	out.println("<tr><td>" + ObjToJson.get("Result") + "</td><td>" + ObjToJson.get("Code") + "</td><td>" + ObjToJson.get("Cash") + "</td><td>" + ObjToJson.get("Service") + "</td><td>" + ObjToJson.get("Message") + "</td></tr>");
	out.println("</table>");
	
	if(true){ return; }
}

//페이징 숫자
String Paging = "";
for (int i = 1; i <= (Long) ObjToJson.get("Total_Page"); i++ ){
	Paging += "<a href='" + request.getRequestURL() + "?page=" + i + "&Term=" + Term + "&List_EA=" + List_EA + "&Search_Field=" + Search_Field + "&Search_Word=" + Search_Word + "'>" + i + "</a>";
}



//출력 목록
String ResultTr = "";
for (int i = 0; i < Integer.parseInt(List_EA); i++){
	if ( i >= ArrToObj.size() ) { continue; }
	JSONObject ResultObj = (JSONObject) ArrToObj.get(i);
	
	ResultTr += "<tr>";
	ResultTr += "<td>" + ResultObj.get("No") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Service") + "</td>";
	ResultTr += "<td><a href='./Report_Detail.jsp?JobNo=" + ResultObj.get("Job_No") + "' target='_blank'>" + ResultObj.get("Job_No") + "</a></td>";
	ResultTr += "<td>" + ResultObj.get("Subject") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Main_Text") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Callback") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Send_Date") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Total_Cnt") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Sending_Cnt") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Sent_Cnt") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Fail_Cnt") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Status") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Insert_Date") + "</td>";
	ResultTr += "<td>" + ResultObj.get("Done_Date") + "</td>";
	ResultTr += "</tr>";
}

//select 선택
String Term1 = "";
String Term2 = "";
String Term3 = "";
String Term4 = "";
String Term5 = "";
String Term6 = "";
switch ( Integer.parseInt(Term) ){
	case -30 	: Term2 = "selected"; break;
	case -60 	: Term3 = "selected"; break;
	case -90 	: Term4 = "selected"; break;
	case -120 	: Term5 = "selected"; break;
	case -180 	: Term6 = "selected"; break;
	default		: Term1 = "selected";
}

String LE1 = "";
String LE2 = "";
String LE3 = "";
String LE4 = "";
switch ( Integer.parseInt(List_EA) ) {
	case 30 	: LE2 = "selected"; break;
	case 50 	: LE3 = "selected"; break;
	case 100 	: LE4 = "selected"; break;
	default 	: LE1 = "selected"; 
}

String SF1 = "";
String SF2 = "";
String SF3 = "";
String SF4 = "";
String SF5 = "";
String SF6 = "";
if 		( Search_Field.equals("Job_No") ) 	 { SF2 = "selected"; }
else if ( Search_Field.equals("Main_Text") ) { SF3 = "selected"; }
else if ( Search_Field.equals("Company") )	 { SF4 = "selected"; }
else if ( Search_Field.equals("Name") )		 { SF5 = "selected"; }
else if ( Search_Field.equals("Phone") )	 { SF6 = "selected"; }
else 	{ SF1 = "selected"; }
%>

<!-- 화면 출력 구성 -->
<form method='GET' id='search' name='search' action='<%=request.getRequestURL()%>' style='display:inline-block;'>
	<div>
		<select name='Term' onchange="document.getElementById('search').submit();">
			<option value='-7' 		<%=Term1%> >최근 7</option>
			<option value='-30' 	<%=Term2%> >최근 30</option>
			<option value='-60' 	<%=Term3%> >최근 60</option>
			<option value='-90' 	<%=Term4%> >최근 90</option>
			<option value='-120' 	<%=Term5%> >최근 120</option>
			<option value='-180' 	<%=Term6%> >최근 180</option>
		</select>
				
		<select name='List_EA' onchange="document.getElementById('search').submit();">
			<option value='15' 	<%=LE1%> >15개씩</option>
			<option value='30' 	<%=LE2%> >30개씩</option>
			<option value='50' 	<%=LE3%> >50개씩</option>
			<option value='100' <%=LE4%> >100개씩</option>
		</select>
				
		<select name='Search_Field'>
			<option value='Subject' 	<%=SF1%> >발송제목</option>
			<option value='Job_No'		<%=SF2%> >발송번호</option>
			<option value='Main_Text' 	<%=SF3%> >문자내용</option>
			<option value='Company' 	<%=SF4%> >수신회사명</option>
			<option value='Name' 		<%=SF5%> >수신자명</option>
			<option value='Phone' 		<%=SF6%> >수신번호</option>
		</select>
				
		<input type='text' name='Search_Word' value='<%=new String (Search_Word.getBytes("8859_1"), "UTF-8")%>'>
		
		<input type='submit' value='조회'>
	</div>
</form>
		
<div style='display:inline-block;'>
	결과 : <%=ObjToJson.get("Result")%> / 코드 : <%=ObjToJson.get("Code")%> / 총 목록 수 <%=ObjToJson.get("Total_Cnt")%> / 총 페이지 수 <%=ObjToJson.get("Total_Page")%> / 현재 페이지 번호 <%=ObjToJson.get("Now_Page")%>
</div>
		
<table border='1' width='100%' cellpading='0' cellspacing='0'>
	<tr>
		<th>순번</th>
		<th>서비스</th>
		<th>발송번호</th>
		<th>발송제목</th>
		<th>보낸내용</th>
		<th>발신번호</th>
		<th>보낸 시각</th>
		<th>수신처수</th>
		<th>진행중이 건수</th>
		<th>성공건수</th>
		<th>실패건수</th>
		<th>상태</th>
		<th>접수시각</th>
		<th>완료시각</th>
	</tr>
	<%=ResultTr%>
</table>
<br/>
<br/>
<center><%=Paging%></center>



