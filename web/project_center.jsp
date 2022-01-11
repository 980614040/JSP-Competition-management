<%@ page import="java.util.List" %>
<%@ page import="hziee.utils.DBUtils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
	<head>
		<meta charset="utf-8">
		<title></title>
	</head>
	<link rel="stylesheet" type="text/css" href="css/外部css/bootstrap.min.css" />
	<script src="js/外部js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/外部js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	<link rel="stylesheet" type="text/css" href="css/project_center.css" />

	<%
		//获取传入的usenameid
		String id = request.getParameter("usename");
		System.out.println("project.jsp的获取上级的id："+id);
//		String[] temp = {"id","author","content","publishtime"};
//		List<String[]> vec = dob.find("book",temp,"id="+id);
//		for(int i=0;i<vec.size();i++){
//			String[] ss = vec.get(i);
	%>



	<body>
		<div class="top">
			<div class="title">

				<span>学科竞赛管理系统</span>

			</div>
		</div>

		<div class="middle">

			<div class="managemuen">
				<div class="muen_title">
					<p>管理菜单</p>
				</div>
				<div class="muen">
					<div class="">
						<div class="managemuen_2">
							<div class="muen_title_2">
								<p>报名管理</p>
								
							</div>
							<div class="muen_nav">
								<ul>
									<li>
								<p>竞赛科目信息</p>

									</li>
									<li>
									<p>添加竞赛科目</p>
								</li>
								</ul>
							</div>
						</div>
						<div class="managemuen_2">
							<div class="muen_title_2">
								<p>作品管理</p>
								
							</div>
							<div class="muen_nav">
								<ul>
									<li>
										<p><a href="workupload.jsp">作品提交</a></p>

									</li>
									<li>
										<p><a href="groupupload.jsp">小组添加</a></p>
									</li>
								</ul>
							</div>
						</div>
						<div class="managemuen_2">
							<div class="muen_title_2">
								<p>竞赛成绩管理</p>
						
							</div>
							<div class="muen_nav">
								<ul>
									<li>
										<p>小组信息</p>

									</li>
									<li>
										<p>成绩录入</p>
									</li>
								</ul>
							</div>
						</div>
					</div>


				</div>
			</div>
			<div class="selects">
				<p>项目类型:</p>

				<form method="post" action="chooseproject.center">
				<div class="inline">



						<%

							DBUtils db=new DBUtils();

							String tableName2 = "kinds";
							String[] field2 = {"kinds_title"};

							//缺少密码
							//引用db的find方法查找；
							List<String[]> list2 = db.find(tableName2, field2, "");

						%>

						<ul class="project_ul">

							<%

								for (String[] arr : list2)
							{

							%>
							<li><input type="submit" id="<%=arr[0]%>"
									   name="kinds_radios"
									   onclick="select(<%=arr[0]%>)"
									   value="<%=arr[0]%>"  /></li>

							<script>


							</script>

							<%}%>
						</ul>






				</form>

				</div>
			</div>
			<div class="compete_infm">

					<select name="select1" id="type" form=>

<%

		String compete_title=(String) request.getAttribute("compete_title");
	System.out.println(compete_title);
%>


						<option value=""><%=compete_title%></option>


				</select>
				<div>
					<p>
						<%

							String[] field4 = {"describes"};
							List<String[]> list4 =db.find("compete",field4,"compete_title="+"'"+compete_title+"'");
							for (String[] arr : list4) {
								System.out.println(arr[0]);
						%>
						<%=arr[0]%>

						<%}%>
					</p>
				</div>

			</div>
		</div>
		<div class="bottom">

		</div>
	</body>
</html>
<script src="js/project_center.js" type="text/javascript" charset="utf-8"></script>