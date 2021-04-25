
<div id="outer">
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>


<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>



<body>
<Font style="color: navy;" size="4">Contact Us:</Font>
<form method="post" name="myform" id="myform" action="query.jsp">
<table width="100%">
<tr>
<td>
<table width="55%" align="left" >
<tr><td><img src="images/pic01.jpg"/></td>
<td><Font style="color: navy;" size="3"><B>Your Query:</B></Font><br>

<textarea name="query" style="width: 600px; height:80px"></textarea><br>
<Font style="color: navy;" size="2"><B>Email:</B></Font><input type="text" name="email" style="width: 180px; "/>
<input type="submit" value="submit" style="padding: 2px 2px" >
</td>
</tr>
</table>
</td>
<td>
<table align="right" >
<tr align="left"><td><Font style="color: navy;" size="3">Cont No.:1234567890</Font><br>
<Font style="color: navy;" size="3">Email id:gmail.com</Font><br>
<Font style="color: navy;" size="3">Contact Person:Rishi</Font>
</td></tr>
</table>
</td>
</tr>

</table>
</form>
</body>

<jsp:include page="footer.jsp"></jsp:include>
</div>
</html>