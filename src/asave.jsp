<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{

String username=request.getParameter("username");
String userpass=request.getParameter("userpass");

String dateofbirth=request.getParameter("dob");
String dateofjoining=request.getParameter("doj");
String salary=request.getParameter("salary");
String branch=request.getParameter("branch");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
PreparedStatement ps=con.prepareStatement("insert into payregister(username,userpass,branch,dateofjoining,dateofbirth,salary) values(?,?,?,?,?,?)");

//ps.setInt(1,2);
ps.setString(1,username);
ps.setString(2,userpass);
ps.setString(3,branch);
ps.setString(4,dateofbirth);
ps.setString(5,dateofjoining);
ps.setString(6,salary);

int s=ps.executeUpdate();
System.out.print(s);
}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="ahome.jsp"></jsp:forward>
