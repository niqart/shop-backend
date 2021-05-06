<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
</head>
<body>
	<div class="container col-md-10 mt-3">
		<div class="row">
			<form class="input-group mb-3" action="/products/name">
				<input type="search" class="form-control" name="name"
					placeholder="Buscar por nombre">
				<div class="input-group-append">
					<button class="btn btn-secondary" type="submit">Buscar</button>
				</div>
			</form>
		</div>
		<div class="row">
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Nombre</th>
						<th scope="col">Codigo</th>
						<th scope="col">Precio</th>
						<th scope="col">Opciones</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${products}" var="entry">
						<tr>
							<th scope="row">${entry.id}</th>
							<td>${entry.name}</td>
							<td>${entry.code}</td>
							<td>${entry.price}</td>
							<td class="button-group" role="group"><a
								href="/products/show/${entry.id}" class="btn btn-primary">Ver</a>
								<a href="/products/edit/${entry.id}" class="btn btn-secondary">Editar</a>
								<a href="/products/delete/${entry.id}" class="btn btn-danger">Eliminar</a>
								<a href="sales/1/product/${entry.id}" class="btn btn-primary">A�adir
									a lista</a>
						</tr>
					</c:forEach>

				</tbody>
			</table>
			<c:forEach begin="1" end="${totalPages}" var="index">
				<a href="/products/page/${index}">p�g. : ${index}</a>
			</c:forEach>
		</div>

		<div class="row">
			<div class="col-md-4">
				<a href="/products/new" class="btn btn-success">Agregar producto</a>
			</div>
		</div>
	</div>
</body>
</html>