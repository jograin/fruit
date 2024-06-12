<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="oracle08.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  	String sql="select max(custno) + 1 from member_tbl_02";
	Connection conn = DBConnect.getConnection();
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
		  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css?ver=2">
<script type="text/javascript">
	function chkVal(){
		var mData = document.mbrData;
		if(!mDATA.custname.value){
			alert("회원성명을 입력하세요")
			mData.custname.focus();
			return false;
			
		}
		if(!mDATA.phone.value){
			alert("phone을 입력하세요")
			mData.phone.focus();
			return false;
			
		}
		if(!mDATA.address.value){
			alert("address을 입력하세요")
			mData.address.focus();
			return false;
			
		}
		if(!mDATA.joindate.value){
			alert("joindate을 입력하세요")
			mData.joindate.focus();
			return false;
			
		}
		if(mDATA.grade.value=="none"){
			alret("choose grade")
			mDATA.grade.focus();
			return false;
		}
		if(!mDATA.city.value){
			alert("city을 입력하세요")
			mData.city.focus();
			return false;
			
		}
		
	}
</script>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<jsp:include page="../include/nav.jsp"></jsp:include>
	<section id ="section">
		<h2>홈쇼핑 회원등록</h2>
		<form action="mbrJoin_p.jsp" name="mbrData" method="post" onsubmit="return chkVal()">
			<table class="joinTable">
				<tr>
					<th>회원번호(자동발생)</th>
					<td><input type="text" name="custno" size="10" value="<%= rs.getString(1)%>" readonly></td>
					
				</tr>
				<tr>
					<th>회원성명</th>
					<td><input type="text" name="custname" size="10"></td>
					
				</tr>
				<tr>
					<th>회원전화</th>
					<td><input type="text" name="phone" size="15"></td>
					
				</tr>
				<tr>
					<th>회원주소</th>
					<td><input type="text" name="address" size="25"></td>
					
				</tr>
				<tr>
					<th>가입일자</th>
					<td><input type="text" name="joindate" size="10"></td>
					
				</tr>
				<tr>
					<th>고객등급</th>
					<td>
						<select name="grade">
							<option value="none">==선택==</option>
							<option value="A">VIP</option>
							<option value="B">일반</option>
							<option value="C">직원</option>
							
						</select>
					</td>
					
				</tr>
				<tr>
					<th>도시코드</th>
					<td><input type="text" name="city" size="10"></td>
					
				</tr>
					<td colspan="2">
						<input type="submit" value="등록" >
						<input type="submit" value="조회" onclick="lacation.href='mbr_list.jsp'">
					</td>
		
			</table>
			
		</form>
	</section>
	
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>