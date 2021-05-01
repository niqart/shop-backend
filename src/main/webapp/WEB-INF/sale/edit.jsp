<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
</head>
<body>
	<div class="container col-md-6 mt-3">
		<div class="row">
			<h3>Editar venta</h3>
		</div>
		<div class="row">
			<form class="form mt-3" action="/sales/update/${id}" method="POST">
				<div class="mb-3">
					<label for="buyer" class="form-label">Comprador</label> <input
						type="text" class="form-control" name="buyer" value="${buyer}">
				</div>
				<div class="mb-3">
					<label for="total" class="form-label">Precio total</label> <input
						type="number" class="form-control" name="total" value="${total}">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block">Enviar</button>
				</div>

			</form>
		</div>
	</div>
</body>
</html>