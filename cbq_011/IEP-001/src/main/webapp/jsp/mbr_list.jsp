<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="oracle08.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    
	String sql="select custno, custname, phone, address, to_char(joindate,'yyyy-mm-dd') joindate, case when grade = 'A' then 'VIP' when grade = 'B' then '일반' else '직원' end grade, city from member_tbl_02";
	Connection conn = DBConnect.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="..css/style.css=1">
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>
	<jsp:include page="../include/nav.jsp"></jsp:include>
	<section id ="section">
		<h2>회원목족조회/수정</h2>
		
		<table>
			<thead>
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>가입일자</th>
				<th>고객등급</th>
				<th>거주지역</th>
				</tr>
			</thead>
				<tbody>
					<%
						while(rs.next()){
					
					%>
						<tr>
							<td><%=rs.getString(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %></td>
							<td><%=rs.getString(4) %></td>
							<td><%=rs.getString(5) %></td>
							<td><%=rs.getString(6) %></td>
							<td><%=rs.getString(7) %></td>
						</tr>
					<%
						}
					
					%>
				
				
				</tbody>
			
			
		</table>
	</section>
	
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>