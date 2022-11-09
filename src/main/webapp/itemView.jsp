<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개별 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="./css/main.css">
<script type="text/javascript" src="./js/itemView.js" defer></script>
</head>
<body>

	<div class="container" style="margin-top: 100px; width: 1400px">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th class="info" colspan="3" style="text-align: left; vertical-align: middle;">
						<h2>선택 상품 보기</h2>
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
					<td colspan="1" align="left">
						<button class="btn btn-outline-info" onclick="location.href='itemSelectByIdx.jsp?idx=${vo.idx}&currentPage=${currentPage}&job=updateOrDelete'">수정/삭제</button>
					</td>
					<td colspan="2" align="right">
						<button class="btn btn-outline-secondary" onclick="location.href='itemList.jsp?currentPage=${currentPage}'">돌아가기</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>


</body>
</html>