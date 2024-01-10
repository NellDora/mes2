<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />

<link rel="stylesheet" href="/resources/css/platform/orderList.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>
	<%@ include file="../sidehead/sidehead.jsp" %>
	<!-- 검색창 -->
	<div class="container">
		<section class="section1">
			<form class="search" action="/productionLine/search">
				<select id="boundary" name="searchStatus">
					<option value="">-- 검색선택 --</option>
					<option value="WAITING">작업대기</option>
					<option value="PROGRESSING">작업중</option>
					<option value="COMPLETE">작업완료</option>
				</select>
				
				<input type="text" name="searchCode" value="${searchCode }" placeholder="작업지시코드" />
				<div>
					<span class="search-font">검색시작일</span>
					<input id="dtIp" type="date" name="searchStartDate" min="2023-12-01" max="2024-12-31" value="${searchStartDate}"/>
					<span class="search-font">검색종료일</span>
					<input id="dtIp" type="date" name="searchEndDate" min="2020-01-01" max="2030-12-31" value="${searchEndDate}" width="100px" />
				</div>

				
				<input type="submit" value="검색" />
			</form>

			<!-- 표 -->
			<div class="list">
				<div class="list-btn">
					<button type="button" class="btn btn-secondary" id="addbtn">추가</button>
					<button type="button" class="btn btn-secondary" id="deletebtn">삭제</button>
				</div>

				<div class="list-box">
					<form action="test" class="list-form">
						<table class="table table-hover">
						
							
							<colgroup>
								<col style="width: 3%" /> 
                    			<col style="width: 15%" /> 
                    			<col style="width: 10%" />
                    			<col style="width: 10%" />
                    			<col style="width: 10%" />
                    			<col style="width: 10%" />
                    			<col style="width: 15%" />
                    			<col style="width: 10%" />
								<col style="width: 7%" />
                			</colgroup>
							<thead>
								<tr class="table-success">
									<th></th>
									<th scope="col">No</th>
									<th scope="col">생산라인</th>
									<th scope="col">작업번호</th>
									<th scope="col">시작날짜</th>
									<th scope="col">종료날짜</th>
									<th scope="col">상태</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${productionLineList}">
									<tr>
										<td scope="row"><input type="checkbox" class="ck" /></td>
										<td>${item.index}</td>
										<td>${item.line}</td>
										<td>${item.isCode}</td>
										<td>${item.startDate}</td>
										<td>${item.endDate}</td>
										<td>${item.status}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</form>
				</div>
			</div>
			
			      <!-- 페이징 -->
			<div class="box-footer clearfix">
				<div style="margin: 0 auto; width: fit-content;">
				<ul class="pagination pagination-sm no-margin pull-right">
				
					<c:if test="${pageVO.prev }">
						<li><a href="/productionLine/search?page=${pageVO.startPage - 1 }&searchStatus=${searchStatus }&searchCode=${searchCode}&searchStartDate=${searchStartDate }&searchEndDate=${searchEndDate}">«</a></li>
					</c:if>
					
					<c:forEach var="i" begin="${pageVO.startPage }" end="${pageVO.endPage }" step="1">
						<li><a href="/productionLine/search?page=${i }&searchStatus=${searchStatus }&searchCode=${searchCode}&searchStartDate=${searchStartDate }&searchEndDate=${searchEndDate}">${i }</a></li>
					</c:forEach>
					
					<c:if test="${pageVO.next }">
						<li><a href="/productionLine/search?page=${pageVO.endPage + 1 }&searchStatus=${searchStatus }&searchCode=${searchCode}&searchStartDate=${searchStartDate }&searchEndDate=${searchEndDate}">»</a></li>
					</c:if>
				</ul>
				</div>
			</div>
			<!-- 페이징 끝 -->
			
		</section>

		<div id="bottomContent"></div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous">
	</script>
	<script src="/resources/js/platform/orderList.js"></script>
	
	<script>
	
    var searchStatus = '${searchStatus}'; 
    // JavaScript를 통해 동적으로 선택된 값을 설정
    document.getElementById('boundary').value = searchStatus;
	
    function openIsSave(){
        window.open("/instructions/save","save","width=800px, height=640px")
    }
	</script>
	
</body>
</html>