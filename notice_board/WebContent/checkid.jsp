<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.MemberDao"%>
<%@page import="dto.MemberDto"%>

<%

String id=request.getParameter("id");
System.out.println("id:"+id);

//DB 접속 Data 산출
MemberDao dao=MemberDao.getInstance();
boolean b=dao.getId(id);
if(b){
	out.println("NO");
}else{
	out.println("OK");
}

%>