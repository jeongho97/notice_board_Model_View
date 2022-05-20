<%@page import="dto.MemberDto"%>
<%@page import="dto.BbsDto"%>
<%@page import="dao.BbsDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	int seq=Integer.parseInt(request.getParameter("seq"));
	String id = request.getParameter("id");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
%>
<%
Object obj=session.getAttribute("login");
if(obj==null){ //session 정보 날라 갔을때
	%>
	
	<script>
	alert("로그인해 주십시오");
	location.href="login.jsp";
	</script>	
	<%
}
MemberDto mem = (MemberDto)obj;
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
boolean isS=dao.update(seq, new BbsDto(id,title,content));
if(isS){
	%>
	<script type="text/javascript">
	alert("업데이트 성공");
	location.href = "bbsdetail.jsp?seq="+<%=seq%>;
	</script>
	
	<%
}else{
	%>
	
	<script type="text/javascript">
	alert("업데이트 실패");
	location.href = "bbsdetail.jsp";
	</script>
	
	<%
}

%>
</body>
</html>