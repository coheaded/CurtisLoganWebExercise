<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>createtable</title>
</head>
<body>

<form method="get" action="createtable.html" name="createdtable">Hello
<%=request.getParameter("name")%>. Here is your table<br>
<table style="text-align: left; width: 664px; height: 32px;"
border="1" cellpadding="2" cellspacing="2">
<%String rows = request.getParameter("numRows");
String columns = request.getParameter("numColumns");
if(Integer.parseInt(rows)<=0){
	session.setAttribute("row error","Hello "+ request.getParameter("name") + "your rows should be greater than 0");
	response.sendRedirect("classexercise.jsp");
}
if(Integer.parseInt(columns)<=0){
	session.setAttribute("col error","Hello "+ request.getParameter("name") + "your columns should be greater than 0");
	response.sendRedirect("classexercise.jsp");
}
for(int i = 0; i<Integer.parseInt(rows);i++){
for(int j = 0; j<Integer.parseInt(columns);j++){%>
	
	<td style="vertical-align: top;"><%out.println((i+1)+","+(j+1)); %> <br>
	
	</td>
	<%} %>
	<tr>
	</tr>
	<%} %>
<tbody>

</tbody>
</table>
<br>
</form>
</body>
</html>
