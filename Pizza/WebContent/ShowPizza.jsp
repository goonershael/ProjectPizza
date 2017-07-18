<%@page import="com.pizza.Pizza"%>
<%@page import="java.util.List"%>
<%@page import="OrderDAO.OrderDAOImpl"%>
<%@page import="OrderDAO.OrderDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add to cart</title>
</head>
<body>
	<h1>Choose Your Pizza</h1>
	
	<%
		Pizza pizza1 = new Pizza();
		OrderDAO dao = new OrderDAOImpl();
		List<Pizza> pizza = dao.showList();
		pageContext.setAttribute("pizza", pizza);
	%>
	<form action="sortByType.jsp" method="post">
		<input type="radio" name="Type" value="Veg"> Veg <input
			type="radio" name="Type" value="Non-Veg"> Non-Veg <input
			type="radio" name="Type" value="Both" checked> Select Both <INPUT
			TYPE="submit" VALUE="Submit"><br>
	</form>

	<form>
		<table border='1'>

			<%
				for (Pizza p : pizza) {
			%>
			<tr>
				<td>
					<%
						out.println(p.getName());
					%>
				</td>
				<td><%=p.getType()%></td>
				<td>
					<%
						out.println(p.getDescription());
					%>
				</td>
				<td>
					<%
						out.println(p.getPrice());
					%>
				</td>
				<td><button type="button" onclick="alert('Added To your cart')">Add
						To Cart</button></td>
				<td><select>
						<option value="none">SelectNone</option>
						<option value="Cheese">Cheese</option>
						
				</select></td>
				<td><select>
						<option value="none">SelectNone</option>
						<option value="regular">Regular Crust</option>
						<option value="thin">Thin Crust</option>
				</select></td>
			</td>
			</tr>
			<%
				}
			%>
			<br>
		</table>
	</form>

</body>
</html>