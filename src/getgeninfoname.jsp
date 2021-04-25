<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String n=request.getParameter("val");
if(n.length()>0){
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");

PreparedStatement ps=con.prepareStatement("select * from student2 where id='"+n+"'");

//ps.setString(1,n);
ResultSet rs=ps.executeQuery();
out.print("<br>");
out.print("<form action='save1.jsp' name='myform' id='myform'>");
out.print("<table cellspacing=15 cellpadding=15>");
while(rs.next()){
out.print("<tr><td><font style='color:navy'><B>Student Detail:</B></font></td></tr>");
out.print("<tr><td><B>ID:</B></td><td><input type='text' name='id' value='"+rs.getString(1)+"'></input></td></tr>");
out.print("<tr><td><B>Name:</B></td><td><input type='text' name='name' value='"+rs.getString(2)+"'></input></td></tr>");
out.print("<tr><td><B>Course:</B></td><td><input type='text' name='course' value='"+rs.getString(3)+"'></input></td></tr>");
out.print("<tr><td><B>Mobile:</B></td><td><input type='text' name='mobile' value='"+rs.getString(4)+"'></input></td></tr>");
out.print("<tr><td><B>Father's Name:</B></td><td><input type='text' name='fathername' value='"+rs.getString(10)+"'></input></td></tr>");
out.print("<tr><td><B>Mother's Name:</B></td><td><input type='text' name='mothername' value='"+rs.getString(11)+"'></input></td></tr>");
out.print("<tr><td><B>Qualification:</B></td><td><input type='text' name='qualification' value='"+rs.getString(13)+"'></input></td></tr>");
out.print("<tr><td><B>Date of Birth:</B></td><td><input type='text' name='dateofbirth' value='"+rs.getString(12)+"'></input></td></tr>");
out.print("<tr><td><B>Date of Joining:</B></td><td><input type='text' name='dateofjoining' value='"+rs.getString(14)+"'></input></td></tr>");
out.print("<tr><td><B>Date of Submission:</B></td><td><input type='text' name='feesub' value='"+rs.getString(5)+"'></input></td></tr>");
out.print("<tr><td><B>Paid:</B></td><td><input type='text' name='paid' value='"+rs.getString(7)+"'></input></td></tr>");
out.print("<tr><td><B>Fee:</B></td><td><input type='text' name='fee' value='"+rs.getString(6)+"'></input></td></tr>");
out.print("<tr><td><B>Balance:</B></td><td><input type='text' name='balance' value='"+rs.getString(8)+"'></input></td></tr>");
out.print("<tr><td><B>Address:</B></td><td><input type='text' name='address' value='"+rs.getString(9)+"'></input></td></tr>");
out.print("<tr><td><B>Description:</B></td><td><input type='text' name='description' value='"+rs.getString(15)+"'></input></td></tr>");
out.print("<tr><td><B>Trainer:</B></td><td><input type='text' name='trainer' value='"+rs.getString(16)+"'></input></td></tr>");
out.print("<tr><td></td><td><input style='padding:3px 3px' value='Edit & Save' type='submit'></td></tr>");
out.print("</form>");
}

con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>


