<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<div id="outer">
<jsp:include page="header.jsp"></jsp:include>


<div id="main">

<h3 style="color: navy;" align="center"><B>Consultant:-   JavaTpoint</B></h3>
<div id="box">

<form name="myform" action="asave.jsp">
<table>
<tr><td>Branch:</td><td><select name="branch">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Noida</option>
					<option>Delhi</option>
					</select></td></tr>
					<tr><td><br></td></tr>
<tr><td>Username:  </td><td><input type="text" name="username"/></td></tr>
	<tr><td><br></td></tr>
	
<tr><td>Password:  </td><td><input type="password" name="userpass"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Date of Joining:</td><td><input type="text" name="doj"/></td></tr>
	<tr><td><br></td></tr>
<tr><td>Date of Birth:</td><td><input type="text" name="dob"/></td></tr>
	<tr><td><br></td></tr>
	<tr><td>Salary:</td><td><input type="text" name="salary"/></td></tr>
	<tr><td><br></td></tr>
		<tr><td></td><td><input type="submit" value="create" style="padding: 2"></td></tr>
	<tr><td><br></td></tr>
</table>
<div id="location" align="left"></div>
</form>

</div>

</div>




<jsp:include page="footer.jsp"></jsp:include>

</div>

</html>
