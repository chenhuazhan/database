<%@ page import="java.lang.*,java.io.*,java.sql.*,java.util.*" contentType="text/html;charset=gb2312" %>
  <html>
  <body>
  <% //加载驱动程序
  Class.forName("net.sourceforge.jtds.jdbc.Driver").newInstance();
   String url="jdbc:jtds:sqlserver://localhost:1433/test";
   String user="sa";
   String password="sa";
   //建立连接对象
   Connection conn=DriverManager.getConnection(url,user,password);
   //创建语句对象
   Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
   String userName="a";
   String password1="b";
   String sql="select * from tb_person where pname="+"'"+userName+"'"+"and "+"password="+"'"+password1+"'";
    out.println(sql);
	//获得SQL语句的执行结果
   ResultSet rs=stmt.executeQuery(sql);
   while(rs.next()) { %>
    您的第一个字段内容为：<%=rs.getString(1)%><br>
    您的第二个字段内容为：<%=rs.getString(2)%><br>
  <% } %>
  <% out.print("数据库操作成功，恭喜你"); %>
  <% rs.close();
   stmt.close();
   conn.close();
   %>
  </body>
  </html> 

