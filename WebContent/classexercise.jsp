<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>classexercise</title>
</head>
<body>
<%if(session.getAttribute("row error")==null)
	out.print(session.getAttribute("col error")); 
	else
	out.print(session.getAttribute("row error"));
	session.setAttribute("row error", null);
	session.setAttribute("col error", null);%><br>
<form action="createtable.jsp" name="classexercise"><br>
<table style="text-align: left; width: 527px; height: 173px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Enter your name</td>
<td style="vertical-align: top;"><input name="name"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of rows<br>
</td>
<td style="vertical-align: top;"><input name="numRows" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of columns<br>
</td>
<td style="vertical-align: top;"><input name="numColumns"
value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><a href="createtable.html"><input
value="Submit" name="Submit" type="submit"></a><br>
</td>
<td style="vertical-align: top;"><input name="Reset"
value="Reset" type="reset"><br>
</td>
</tr>
</tbody>
</table>
</form>
<br>
<br>
</body>
</html>
