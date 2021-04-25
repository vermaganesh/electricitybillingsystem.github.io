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
out.print("<tr><td><B>ID</B></a></td><td><B>Name</B></td><td><B>Course</B></td><td><B>Mobile</B></td><td><B>Father Name</B></td><td><B>Mother Name</B></td><td><B>Qualification</B></td><td><B>Date of Birth</B></td><td><B>Date of Joining</B></td><td><B>Address</B></td><td><B>Description</B></td><td><B>Trainer</B></td></tr>");
while(rs.next()){
out.print("<tr><td>"+rs.getString(1)+"</td>");
out.print("<td>"+rs.getString(2)+"</td>");
out.print("<td>"+rs.getString(3)+"</td>");
out.print("<td>"+rs.getString(4)+"</td>");
out.print("<td>"+rs.getString(10)+"</td>");
out.print("<td>"+rs.getString(11)+"</td>");
out.print("<td>"+rs.getString(13)+"</td>");
out.print("<td>"+rs.getString(12)+"</td>");
out.print("<td>"+rs.getString(14)+"</td>");
out.print("<td>"+rs.getString(9)+"</td>");
out.print("<td>"+rs.getString(15)+"</td>");
out.print("<td>"+rs.getString(16)+"</td></tr>");
}
out.print("</table>");
con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
