<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.MemberDao"%>
<%@page import="dto.MemberDto"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regiAf.jsp</title>
</head>
<body>

<%
String id=request.getParameter("id");
String pwd=request.getParameter("pwd");
String name=request.getParameter("name");
String email=request.getParameter("email");

//out.println(id+" "+pwd+" "+name+" "+email);
MemberDao dao = MemberDao.getInstance();
MemberDto dto=new MemberDto(id,pwd,name,email,0);
boolean isS = dao.addMember(dto);

if(isS){
	%>
	<script type="text/javascript">
	alert("성공적으로 가입되었습니다");
	location.href="login.jsp";
	
	</script>
	<%	
}else{
	 %>
	 <script type="text/javascript">
	 alert("다시 기입해 주십시오");
	 location.href="regi.jsp";
	 </script>
	 <%
}

%>

</body>
</html>