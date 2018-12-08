<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">

		<div class="row">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">学生管理系统</a>
					</div>

					<!-- /.navbar-collapse -->
					<!-- /.container-fluid -->
			</nav>
		</div>

		<div class="row">


			<table class="table table-hover">
				<thead>
					<tr>
						<td>学号</td>
						<td>姓名</td>
						<td>班级</td>
						<td>性别</td>
						<td>年龄</td>
						<td>操作</td>
					</tr>
				</thead>
				<tbody id="formBody">
				</tbody>
			</table>
		</div>

		<div class="row">
			<div class="col-md-8">
				<button class="btn btn-default" type="submit" id="insert_student">添加用户</button>
			</div>

			<!--模态框  -->
			<div class="modal fade" tabindex="-1" role="dialog" id="insert_modal">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title">Modal title</h4>
						</div>
						<div class="modal-body">
							<!-- 表单 -->


							<form id="insert_form">
								<div class="form-group">
									<label for="exampleInputEmail1">学号</label> <input type="text"
										name="id" class="form-control" placeholder="学号">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">姓名</label> <input
										type="text" class="form-control" name="name" placeholder="姓名">
								</div>

								<div class="form-group">
									<label for="exampleInputPassword1">班级</label> <select
										class="form-control" name="classes">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
										<option>7</option>
									</select>
								</div>

								<div class="form-group">
									<label for="exampleInputPassword1">性别</label> <label
										class="radio-inline"> <input type="radio" name="sex"
										value="男"> 男
									</label> <label class="radio-inline"> <input type="radio"
										name="sex" value="女"> 女
									</label>
								</div>

								<div class="form-group">
									<label for="exampleInputPassword1">年龄</label> <input
										type="text" class="form-control" name="age" placeholder=" 年龄">
								</div>

							</form>


							<!--结束  -->
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary" id="insert_submit">提交</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>

			<!--模态框  -->
			<div class="modal fade" tabindex="-1" role="dialog" id="update_modal">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title">Modal title</h4>
						</div>
						<div class="modal-body">
							<!-- 表单 -->


							<form id="update_form">
								<div class="form-group">
									<label for="exampleInputEmail1">学号</label>
									 <p class="form-control-static" id="update_static_id"></p>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">姓名</label> 
									<p class="form-control-static" id="update_static_name"></p>
								</div>

								<div class="form-group">
									<label for="exampleInputPassword1">班级</label> <select
										class="form-control" name="classes">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
										<option>7</option>
									</select>
								</div>

								<div class="form-group">
									<label for="exampleInputPassword1">性别</label> <label
										class="radio-inline"> <input type="radio" name="sex"
										value="男"> 男
									</label> <label class="radio-inline"> <input type="radio"
										name="sex" value="女"> 女
									</label>
								</div>

								<div class="form-group">
									<label for="exampleInputPassword1">年龄</label> <input
										type="text" class="form-control" name="age" placeholder=" 年龄">
								</div>

							</form>



							<!--结束  -->
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary" id="update_submit">提交</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>



			<div class="col-md-4">

				<nav aria-label="Page navigation">
					<ul class="pagination">
						<li id="pre_nav"><a aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
					</ul>
					<ul class="pagination" id="page_nav">
					</ul>
					<ul class="pagination">
						<li id="next_nav"><a aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>

	<script>
		$(function() {

			get_List(1);

		})

		function get_List(pc) {
			$.ajax({
				method : "get",
				url : "show",
				data : "pc=" + pc,
				success : function(data) {
					show_List(data);
					show_nav(data);
				}

			});
		}

		function show_List(data) {
			currentPage = data.map.pageinfo.pageNum;
			$("#formBody").empty();
			var body = $("#formBody");
			$.each(data.map.pageinfo.list,
					function(index, item) {
						var tr = $("<tr></tr>");
						var id = $("<td></td>").append(item.id);
						var name = $("<td></td>").append(item.name);
						var classes = $("<td></td>").append(item.classes);
						var sex = $("<td></td>").append(item.sex);
						var age = $("<td></td>").append(item.age);
						var btn = $("<td></td>");
						btn.append($("<button></button>").addClass(
								"btn btn-danger btn-xs").append("delete")
								.append("<span></span>").addClass(
										"glyphicon glyphicon-trash"));
						btn.append("&nbsp;");
						btn.append($("<button></button>").addClass(
								"btn btn-info btn-xs").append("update").append(
								"<span></span>").addClass(
								"glyphicon glyphicon-pencil"));

						tr.append(id);
						tr.append(name);
						tr.append(classes);
						tr.append(sex);
						tr.append(age);
						tr.append(btn);

						body.append(tr);

					})

		}

		function show_nav(data) {
			$("#page_nav").empty();

			if (data.map.pageinfo.isFirstPage) {
				$("#pre_nav").addClass("disabled");
			} else {
				$("#pre_nav").click(function() {
					get_List(currentPage - 1);
				});
			}
			$.each(data.map.pageinfo.navigatepageNums, function(index, item) {
				var n = $("<li></li>").append($("<a></a>").append(item));
				if (item == currentPage) {
					n.addClass("active");
				}
				$("#page_nav").append(n);
				n.click(function() {
					get_List(item);
				});
			});
			if (data.map.pageinfo.isLastPage) {
				$("#next_nav").addClass("disabled");
			} else {
				$("#next_nav").click(function() {
					get_List(currentPage + 1);
				});
			}

		}

		$(document).on("click", ".btn-danger", function() {
			var id = $(this).parent().siblings().first().text();
			var name = $(this).parent().siblings().first().next().text()
			var a = confirm("你确定要删除" + name + "吗?");
			if (a) {
				$.ajax({
					method : "delete",
					url : "delete/" + id,
					success : function() {
						get_List(1);
					}

				});
			}
		});

		$("#insert_student").click(function() {
			$("#insert_modal").modal({
				keyboard : false
			});
		});

		$("#insert_submit").click(function() {
			$.ajax({
				method : "post",
				url : "insert",
				data : $("#insert_form").serialize(),
				success : function() {
					$("#insert_modal").modal('hide');
					get_List(1);
				}

			});
		});

		$(document).on("click", ".btn-info", function() {
			var staticId = $(this).parent().siblings().first().text();
			var staticName = $(this).parent().siblings().first().next().text();
			$("#update_static_id").text(staticId);
			$("#update_static_name").text(staticName);
			$("#update_modal").modal({
				keyboard : false
			});

			$("#update_submit").click(function() {
				$.ajax({
					method : "post",
					url : "update/"+staticId,
					data : $("#update_form").serialize()+"&_method=put",
					success : function(data) {
						$("#update_modal").modal('hide');
						get_List(1);
					}

				});
			});
		});

		//
		 $("#search_btn").click(function() {
			$.ajax({
				method : "get",
				url : "selectByOne",
				data : $("#search_form").serialize(),
				success : function(data) {
					show_selectData(data);
				}
			});
		});
 
		function show_selectData(data) {
			$("#formBody").empty();
		 	var body = $("#formBody");
			var tr = $("<tr></tr>");
			var id = $("<td></td>").append(data.map.studentResult.list.id);
			var name = $("<td></td>").append(data.map.studentResult.list.name);
			var classes = $("<td></td>").append(data.map.studentResult.list.classes);
			var sex = $("<td></td>").append(data.map.studentResult.list.sex);
			var age = $("<td></td>").append(data.map.studentResult.list.age);

			var btn = $("<td></td>");
			btn.append($("<button></button>").addClass("btn btn-danger btn-xs")
					.append("delete").append("<span></span>").addClass(
							"glyphicon glyphicon-trash"));
			btn.append("&nbsp;");
			btn.append($("<button></button>").addClass("btn btn-info btn-xs")
					.append("update").append("<span></span>").addClass(
							"glyphicon glyphicon-pencil"));

			tr.append(id);
			tr.append(name);
			tr.append(classes);
			tr.append(sex);
			tr.append(age);
			tr.append(btn);
			body.append(tr); 

		} 
	</script>

</body>
</html>