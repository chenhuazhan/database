<%@ page import="java.lang.*,java.io.*,java.sql.*,java.util.* " contentType="text/html;charset=gb2312"%>
<%@ page import="javax.naming.*"%>
<%@ page import="javax.sql.*"%>
  <html>
  <body>
  <% //��try��ʼ
try
{
java.sql.Connection con;
Statement stmt;
ResultSet rs;
int i=0;
//��������Դ
Context ctx = new InitialContext();
DataSource ds =(DataSource)ctx.lookup("java:comp/env/jdbc/cai");
//���ݿ�����
con = ds.getConnection();
String sql="select id,name from tb_person";
//������
stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
rs=stmt.executeQuery(sql);
while(rs.next()) { i++; out.println("��¼"+i+"->"); %>
    ���ĵ�һ���ֶ�����Ϊ��<%=rs.getString(1)%>,
    ���ĵڶ����ֶ�����Ϊ��<%=rs.getString(2)%><br>
  <% } %>
  <% out.print("���ݿ�����ɹ�����ϲ��"); %>
  <% rs.close();
   stmt.close();
   con.close();
   }
   //���������Ϣ
catch (Exception e) {out.println(e.getMessage());}
   %>
  </body>
  </html> 

