<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<thead class="thead-light">
			<tr>
				<th>상품코드</th>
				<th>상품분류</th>
				<th>상품명</th>
				<th>위험등급</th>
				<th>약관안내</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${productList }" var="list" varStatus="loop">
			<tr>
				<td><a href="#"><c:out value="${list.financialCode}"/></a></td>
				<td><c:out value="${list.productType}"/></td>
				<td><c:out value="${list.productName}"/></td>
				<td><span class="badge badge-success"><c:out value="${list.productGrade}"/></span></td>
				<td><a href="#" class="btn btn-sm btn-primary">Detail</a></td>
			</tr>
		</c:forEach>
		</tbody>
