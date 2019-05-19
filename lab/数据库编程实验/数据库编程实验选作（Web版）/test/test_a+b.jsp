<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>无标题文档</title>
</head>
<%!int a=9,b=1;%> 
<%-- 上一行是声明变量,变量在整个JSP文件中有效;--%>
 <%a=6;b=0;%>
<body>

  a+b=<%=a+b%>
</body>
</html>
