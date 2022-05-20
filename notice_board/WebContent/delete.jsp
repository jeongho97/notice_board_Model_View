<%@page import="dao.BbsDao"%>
<%@page import="dto.BbsDto"%>
<%@page import="dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int seq=Integer.parseInt(request.getParameter("seq"));

//부모글의 내용
BbsDto bbs=BbsDao.getInstance().getBbsDetail(seq);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	BbsDao dao = BbsDao.getInstance();
	boolean isS=dao.delete(seq);
	
	if(isS){
		%>
		<script type="text/javascript">
		alert("삭제 성공");
		location.href = "bbslist.jsp";
		</script>
		
		<%
	}else{
		%>
		
		<script type="text/javascript">
		alert("삭제 실패");
		location.href = "bbslist.jsp";
		</script>
		
		<%
	}

%>
</body>
</html>