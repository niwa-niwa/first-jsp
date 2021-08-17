<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>Index</title>
</head>
<body>

<%
String str = "Hello JSP";
out.println("<h1>"+str+"</h1>");
%>

<h2><%= str %></h2>

<%
if(true){
	out.println("<p>True</p>");
}else{
	out.println("<p>False</p>");
}
%>

<% boolean bl = false; %>
<% if(bl){ %>
	<p>OK True.<p>
<% }else{ %>
	<p>NG False</p>
<% } %>


<%
	String[] names = {"Taro", "Hanako"}; 
	for(String name:names){
		out.println(name);
	}
%>

<% for(String name:names){%>
	<h1><%= name %></h1>
<% } %>

<% for(String name: names){ %>
	<% if("Taro".equals(name)){ %>
		<div style="color:blue;">He is <%= name %> </div>
	<% } else { %>
		<div style="color:red;">She is <%= name %> </div>
	<% } %>
<% } %>
</body>
</html>