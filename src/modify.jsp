<html>
<head>

<script>
var request;
function sendInfo()
{
var v=document.myform.findName.value;
var url="findname1.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('hi').innerHTML=val;
}
}

function sendGenInfo(name)
{
var v=name;
var url="getgeninfoname.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getGenInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getGenInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('hello').innerHTML=val;
}
}


</script>
</head>

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
<h3 style="color: navy;" align="center"><B>Consultant:-   JavaTpoint</B></h3>
<div id="box">

<form action="save1.jsp" name="myform" id="hello" method="post">
<table width="100%">
<tr>
<td><table width="55%" align="left" style="table-layout: fixed;">
		<tr><td>
<table cellspacing=15 cellpadding=15">
<tr><td><font style="color:navy"><B>Student Detail:</B></font></td></tr>
<tr><td><B>ID:</B></td><td><input type="text" name="id"></input></td></tr>
<tr><td><B>Name:</B></td><td><input type="text" name="name" ></input></td></tr>
<tr><td><B>Course:</B></td><td><input type="text" name="course"></input></td></tr>
<tr><td><B>Mobile:</B></td><td><input type="text" name="mobile"></input></td></tr>
<tr><td><B>Father's Name:</B></td><td><input type="text" name="fathername"></input></td></tr>
<tr><td><B>Mother's Name:</B></td><td><input type="text" name="mothername"></input></td></tr>
<tr><td><B>Qualification:</B></td><td><input type="text" name="qualification"></input></td></tr>
<tr><td><B>Date of Birth:</B></td><td><input type="text" name="dateofbirth"></input></td></tr>
<tr><td><B>Date of Joining:</B></td><td><input type="text" name="dateofjoining" ></input></td></tr>
<tr><td><B>Date of Submission:</B></td><td><input type="text" name="feesub" ></input></td></tr>
<tr><td><B>Paid:</B></td><td><input type="text" name="paid" ></input></td></tr>
<tr><td><B>Fee:</B></td><td><input type="text" name="fee" ></input></td></tr>
<tr><td><B>Balance:</B></td><td><input type="text" name="balance" ></input></td></tr>
<tr><td><B>Address:</B></td><td><input type="text" name="address"></input></td></tr>
<tr><td><B>Description:</B></td><td><input type="text" name="description"></input></td></tr>
<tr><td><B>Trainer:</B></td><td><input type="text" name="trainer"></input></td></tr>
<tr><td></td><td><input style="padding:3px 3px" value=" Edit & Save" type="submit"></td></tr>
</table>

		
		</table>
<table align="right" width="25%" >
<tr>
<td><font style="color: navy;"><B>Search:</B></font><input type="text" name="findName" onkeyup="sendInfo()"></input></td>
</tr>
<tr><td><div id="hi"></div></td></tr>

</table>
</td>
</tr>

</table>


</form>


</div>
</body>






<jsp:include page="footer.jsp"></jsp:include>
</div>
</html>