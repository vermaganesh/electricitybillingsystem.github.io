<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>

<head>
<title>
			Admin Home
		</title>
<script>
var request;
function sendInfo()
{
var branch=document.myform.select.value;
var v=document.myform.findName.value;
var url="afindname.jsp?val="+v+"&branch="+branch;
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
document.getElementById('location').innerHTML=val;
}
}

function viewAll(name)
{
var v=name;
var url="aviewall.jsp?val="+v;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}

try
{
request.onreadystatechange=getAllInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}
function getAllInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('bottom').innerHTML=val;
}
}

</script>
</head>
<div id="outer">
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


<body width="100">


<div id="main">


<h3 style="color: navy;" align="center"><B>Consultant:-   JavaTpoint</B></h3>
<div id="box">
<%
if(request.getAttribute("msg")!=null){
String msg=(String)request.getAttribute("msg");
out.print("<font style='color: navy'><B>");
out.print(msg);
out.print("</B></font>");
}
%>
<form name="myform" >

<table><tr><td><font style="color: navy;">Branch:</font></td><td><select name="branch" id="select">
					<option>Select a Branch</option>
					<option>Ghaziabad</option>
					<option>Noida</option>
					<option>Delhi</option>
					</select></td></tr>
					<tr><td><br></td></tr>
<tr><td><font style="color: navy;">Find:-</font></td><td><input type="text" align="right" name="findName" onkeyup="sendInfo()"></input></td></tr></table>
<div id="right" align="right">

<a href="create.jsp"><font style="color: navy;"><B>Create New Accountant</B></font></a>
</div>

<div id="location" align="left"></div>
</form>

<div id="bottom" align="justify"></div>
<div id="getgeninfo" align="justify"></div>
</div>

</div>

</body>


<jsp:include page="footer.jsp"></jsp:include>

</div>

</html>
