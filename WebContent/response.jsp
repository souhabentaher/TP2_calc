<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Résultat</title>
</head>
<body bgcolor="green">
<form action="calculatrice.html"  method="post">
<center>
<% 
float op1=Float.parseFloat(request.getParameter("txt1")); 
float op2=Float.parseFloat(request.getParameter("txt2")); 
String operation = request.getParameter("r1");
if (operation.equals("addition")){
%>
<h1>Le Résultat est <%= op1+op2 %></h1>

<%} else if (operation.equals("soustraction")){ %>
<h1>Le Résultat est <%= op1-op2 %></h1>

<% }else if (operation.equals("multiplication")){ %>
<h1>Le Résultat est <%= op1*op2 %></h1>

<% } else if (operation.equals("soustraction")){ %>
<h1>Le Résultat est <%= op1-op2 %></h1>

<% } else if (operation.equals("division")){ 
if (op2==0){%><jsp:forward page="erreur.html"></jsp:forward>
<%} else{ %>
<h1>Le Résultat est <%= op1/op2 %></h1><% }} %>

</center>
</body>
</html>