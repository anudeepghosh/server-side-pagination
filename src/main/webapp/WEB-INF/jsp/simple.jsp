<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Simple</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="./css/bootstrap.min.css" rel="stylesheet">
<!-- <link href="./css/styles.css" rel="stylesheet" /> -->
<link href="./css/dataTable.min.css" rel="stylesheet" />

<style type="text/css">
.dataTables_wrapper{
 padding: 1em;
}


</style>
</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="#!">Simple Datatable With an entity</a>
			<a class="navbar-brand" href="./" style="float: right;">Home</a>
		</div>
	</nav>
	<!-- Page Content-->
	<div class="container">

		<table id="example" class="display" style="padding: 1em;">
			<thead class="table-light">
			
			</thead>

		</table>

	</div>
	<script src="./js/jquery-3.6.0.min.js" type="text/javascript"></script>
	<script src="./js/dataTable.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		var table = $('#example')
				.DataTable(
						{
							"dom" : '<<"row"<"col-sm-6"l><"col-sm-6"f>>r<t><"row"<"col-sm-6"i><"col-sm-6"p>>>',
							//"scrollX" : true,
							//"scrollCollapse" : true,
							"ajax" : {
								"url" : "./getAllUsers",
								"type" : "GET",
								"contentType" : "application/json; charset=UTF-8",
								"dataType" : "json",
								"dataSrc" : function(response) {
									consumerData = response;
									return response;
								},
							},
							"columns" : [ {
								"data" : "id",
								"name" : "id",
								"title" : "id",
								"className" : "text-nowrap",
								"defaultContent" : ""
							}, {
								"data" : "firstName",
								"name" : "firstName",
								"title" : "First Name",
								"className" : "text-nowrap",
								"defaultContent" : ""
							}, {
								"data" : "lastName",
								"name" : "lastName",
								"title" : "Last Name",
								"className" : "text-nowrap",
								"defaultContent" : ""
							}, {
								"data" : "email",
								"name" : "email",
								"title" : "Email",
								"type" : "String",
								"className" : "text-nowrap",
								"defaultContent" : "",
								"render" : function(data) {
									if (data == 0) {
										data = " ";
									}
									return data;
								},
							}, {
								"data" : "phoneNumber",
								"name" : "phoneNumber",
								"title" : "Phone Number",
								"className" : "text-nowrap",
								"render" : function(data) {
									if (data == 0 || data === "NULL") {
										data = " ";
									}
									return data;
								},
								"defaultContent" : ""
							}, {
								"data" : "designation.name",
								"name" : "designation",
								"title" : "Designation",
								"className" : "text-nowrap",
								"render" : function(data) {
									if (data == 0 || data === "NULL") {
										data = " ";
									}
									return data;
								},
								"defaultContent" : ""
							} ]
						});

		$.ajax({
			type : "GET",
			url : "./getAllUsers",
			dataType : "json",
			contentType : "application/json",
			async : false,
			success : function(response) {
				console.log(response);
			}
		});
	</script>
</body>
</html>
