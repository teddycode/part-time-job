<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%
  //回到登录页面
  //response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
  //response.setHeader("Location",request.getContextPath()+"/login.action");
  response.sendRedirect(request.getContextPath()+"/part_time_job/listjz.html?pid=6666");
%>