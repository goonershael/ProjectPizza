<%@page import="OrderDAO.OrderDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="OrderDAO.OrderDAO"%>
<%@page import="com.pizza.Pizza"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Pizza pizza1 = new Pizza();
		OrderDAO dao = new OrderDAOImpl();
		List<Pizza> pizza = dao.showList();
		List<Pizza> pizza2 = dao.vegList();
		List<Pizza> pizza3 = dao.nonVegList();
		
		pageContext.setAttribute("pizza", pizza);
%>


	<%            if(request.getParameter("radios") != null) {
    if(request.getParameter("radios").equals("Veg")) { %>

	<form>
		<table border='1'>

			<%
				for (Pizza p : pizza2) {
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
    }
			%>
			<br>
		</table>
	</form>


	<%
	else  if(request.getParameter("radios").equals("Non-Veg")) {
    %>
	<form>
		<table border='1'>

			<%
				for (Pizza p : pizza2) {
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
    }
			%>
			<br>
		</table>
	</form>


	<%  else if(request.getParameter("radios").equals("Both")) {
	%><form>
		<table border='1'>

			<%
				for (Pizza p : pizza2) {
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
	}
			%>
			<br>
		</table>
	</form>
	<%else{
		out.println("Do nothing");
	}
	}
		%>
</body>
</html>