<%@page import="java.sql.PreparedStatement"%>
<%@page import="oracle08.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("UTF-8");
 		String sql="insert member_tbl_02 values(?,?,?,?,?,?,?)";
 		
 		Connection conn = DBConnect.getConnection();
 		PreparedStatement pstmt = conn.prepareStatement(sql);
 		pstmt.setInt(1,Integer.parseInt(request.getParameter("custno")));
 		pstmt.setString(2, request.getParameter("custname"));
 		pstmt.setString(2, request.getParameter("phone"));
 		pstmt.setString(2, request.getParameter("address"));
 		pstmt.setString(2, request.getParameter("joindate"));
 		pstmt.setString(2, request.getParameter("grade"));
 		pstmt.setString(2, request.getParameter("city"));
 		pstmt.excuteUpdate();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css?ver=1.1.1">
</head>
<body>
	<jsp:forward page="mbrjoin.jsp"></jsp:forward>
</body>
</html>