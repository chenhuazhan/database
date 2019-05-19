<%@ page import="java.lang.*,java.io.*,java.sql.*,java.util.* " contentType="text/html;charset=gb2312"%>
<%@ page import="javax.naming.*"%>
<%@ page import="javax.sql.*"%>
  <html>
  <body>
  <% //以try开始
try
{
java.sql.Connection con;
Statement stmt;
ResultSet rs;
int i=0;
//查找数据源
Context ctx = new InitialContext();
DataSource ds =(DataSource)ctx.lookup("java:comp/env/jdbc/cai");
//数据库连接
con = ds.getConnection();
String sql="select id,name from tb_person";
//语句对象
stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
rs=stmt.executeQuery(sql);
while(rs.next()) { i++; out.println("记录"+i+"->"); %>
    您的第一个字段内容为：<%=rs.getString(1)%>,
    您的第二个字段内容为：<%=rs.getString(2)%><br>
  <% } %>
  <% out.print("数据库操作成功，恭喜你"); %>
  <% rs.close();
   stmt.close();
   con.close();
   }
   //捕获错误信息
catch (Exception e) {out.println(e.getMessage());}
   %>
  </body>
  </html> 

