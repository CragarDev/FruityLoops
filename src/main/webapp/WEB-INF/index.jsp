<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date" %>

	<!-- c:out ; c:forEach ; c:if -->
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!-- Formatting (like dates) -->
		<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
			<!-- form:form -->
			<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
				<!-- for rendering errors on PUT routes -->
				<%@ page isErrorPage="true" %>

					<!DOCTYPE html>

					<html>

					<head>
						<meta charset="UTF-8" />
						<title>Craig Burke - Fruity Loops - Home</title>
						<!-- Bootstrap -->
						<!-- CSS only -->
						<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
							rel="stylesheet"
							integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
							crossorigin="anonymous" />
						<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
							integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
							crossorigin="anonymous"></script>
						<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
							integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
							crossorigin="anonymous"></script>
						<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
						<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
						<link rel="stylesheet" href="/css/style.css" />
					</head>

					<body>
						<div class="container w-50">
							<!-- Beginning of Container -->
							<h2 class="text-success">Fruit Store</h2>
							<br />


							<p class="w-100"></p>
							<!-- == table == -->
							<div class="container bg-primary text-dark rounded-3 w-75">
								<table class="table p-5" id="fruit_table">
									<thead>
										<tr>
											<th scope="col" class="h4">Name</th>
											<th scope="col" class="h4">Price</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td scope="row">
												<c:forEach var="fruit" items="${fruits}">
													<p>
														<c:out value="${fruit.name}"></c:out>
													</p>
												</c:forEach>
											</td>
											<td scope="row">
												<c:forEach var="fruit" items="${fruits}">
													<p>
														<fmt:formatNumber value="${fruit.price}" type="currency" />
														<!-- <c:out value="$${fruit.price}" /> -->
													</p>
												</c:forEach>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<p class="w-100"></p>

						</div>
						<!-- End of Container -->
						<script src="/js/app.js"></script>
					</body>

					</html>