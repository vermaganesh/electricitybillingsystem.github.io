<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{
System.out.print(request.getParameter("name"));
String id=request.getParameter("id");
String name=request.getParameter("name");
String course=request.getParameter("course");
String mobile=request.getParameter("mobile");
String fathername=request.getParameter("fathername");
String mothername=request.getParameter("mothername");
String qualification=request.getParameter("qualification");
String dateofbirth=request.getParameter("dateofbirth");
String dateofjoining=request.getParameter("dateofjoining");
String feesub=request.getParameter("feesub");
String paid=request.getParameter("paid");
String fee=request.getParameter("fee");
String balance=request.getParameter("balance");
String address=request.getParameter("address");
String description=request.getParameter("description");
String trainer=request.getParameter("trainer");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
PreparedStatement ps=con.prepareStatement("insert into student2 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

ps.setString(1,id);
ps.setString(2,name);
ps.setString(3,course);
ps.setString(4,mobile);
ps.setString(5,feesub);
ps.setString(7,paid);
ps.setString(6,fee);
ps.setString(8,balance);
ps.setString(9,address);
ps.setString(10,fathername);
ps.setString(11,mothername);
ps.setString(12,dateofbirth);
ps.setString(13,qualification);
ps.setString(14,dateofjoining);
ps.setString(15,description);
ps.setString(16,trainer);
int s=ps.executeUpdate();
out.print("Successfully Saved!");
}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="generalinfo.jsp"></jsp:forward>
