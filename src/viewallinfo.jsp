<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String n=request.getParameter("val");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");

PreparedStatement ps=con.prepareStatement("select * from student2 where id ='"+n+"'");

//ps.setString(1,n);
ResultSet rs=ps.executeQuery();
out.print("<br>");
out.print("<table border='5' cellspacing=5 cellpadding=2>");

while(rs.next()){
out.print("<tr><td><B>ID</B></td><td>"+rs.getString(1)+"</td></tr>");
out.print("<tr><td><B>Name</B></td><td>"+rs.getString(2)+"</td></tr>");
out.print("<tr><td><B>Course</B></td><td>"+rs.getString(3)+"</td></tr>");
out.print("<tr><td><B>Mobile</B></td><td>"+rs.getString(4)+"</td></tr>");
out.print("<tr><td><B>Date of submission</B></td><td>"+rs.getString(5)+"</td></tr>");
out.print("<tr><td><B>Total Fee</B></td><td>"+rs.getString(6)+"</td></tr>");
out.print("<tr><td><B>Paid Amount</B></td><td>"+rs.getString(7)+"</td></tr>");
out.print("<tr><td><B>Balance</B></td><td>"+rs.getString(8)+"</td></tr>");
out.print("<a href='#' name='"+rs.getString(1)+"' onmouseover='javascript:sendGenInfo(this.name)' ><font style='color: navy;'><B>General Information</B></font></a>");
}
out.print("</table>");
con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>