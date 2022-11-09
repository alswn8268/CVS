<%@page import="com.tjoeun.vo.ItemVO"%>
<%@page import="com.tjoeun.service.ItemService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 / 삭제할 상품 보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="./css/main.css">
<script type="text/javascript" src="./js/updateOrDelete.js" defer></script>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
		int idx = Integer.parseInt(request.getParameter("idx"));
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		String job = request.getParameter("job");
	%>
	
		<div class="m-3">
			<form action="#" method="post">
				<table class="table table-hover table-bordered">
					<thead>
						<tr>
							<th class="info" colspan="3" style="text-align: left; vertical-align: middle;">
								<h2>수정 또는 삭제할 상품 보기</h2>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td rowspan="6" width="550px;">
								<img alt="/" src="./images/img02.jpg" style="width: 400px;">
							</td>
						</tr>
						<tr>
							<th width="200px">상품명</th>
							<td width="650px">
								${vo.itemName}
							</td>
						</tr>
						<tr>
							<th>카테고리</th>
							<td>
								${vo.category}
							</td>
						</tr>
						<tr>
							<th>가격</th>
							<td>
								${vo.itemPrice}
							</td>
						</tr>
						<tr>
							<th>판매 편의점</th>
							<td>
								(미정)
							</td>
						</tr>
						<tr>
							<th>행사</th>
							<td>
								(미정)
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input class="btn btn-outline-info" type="button" value="수정" onclick="updateOrDelete()"/>
								<input class="btn btn-outline-info" type="button" value="삭제" onclick="updateOrDelete()"/>
							</td>
							<td colspan="1" align="right">
								<button class="btn btn-outline-secondary" onclick="location.href='itemList.jsp?currentPage=${currentPage}'">돌아가기</button>
							</td>
						</tr>
					</tbody>
				</table>
				<input type="hidden" name="idx" value="${vo.idx}"/>
				<input type="hidden" name="currentPage" value="${currentPage}"/>				
			</form>
		</div>


</body>
</html>