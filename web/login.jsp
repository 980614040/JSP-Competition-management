<%@ page import="hziee.utils.DBUtils" %>
<%@ page import="java.util.List" %>
<%@ page import="hziee.servlet.LoginServlet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>

		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>

		<meta charset="utf-8">
		<title></title>
	</head>
	<link rel="stylesheet" type="text/css" href="css/外部css/bootstrap.min.css" />
	<script src="js/外部js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/外部js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	<link href="css/login.css" rel="stylesheet" type="text/css">

	<body>
		<div class="top">
			<div class="title">

				<span>学科竞赛管理系统</span>

			</div>
		</div>
		<div class="link">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container-fluid">

					<div>
						<ul class="nav navbar-nav">
							<li><a href="login.jsp">首页</a></li>

							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									网上报名
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li><a href="#">报名查询</a></li>
									<!-- 								<li><a href="#">EJB</a></li>
								<li><a href="#">Jasper Report</a></li>
								<li class="divider"></li>
								<li><a href="#">分离的链接</a></li>
								<li class="divider"></li>
								<li><a href="#">另一个分离的链接</a></li> -->
								</ul>
							</li>
							<li><a href="groupupload.jsp">组队报名</a></li>
							<li><a href="#">项目中心</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									成绩审核
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li><a href="#">成绩查询</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="middle">

           <form  action="login.do" method="post">

			<div class="loginview ">
				<div class="logintitle">
					<p>登录</p>
				</div>
				<div class="inputs">
					<div class="inline">
						<div id="">
							<img src="images/dl01.gif">
						</div>
						<div id="">
							<input type="text" name="usename" id="usename" value="" class="input-group" />

						</div>
					</div>
					<div class="inline">
						<div id="">
							<img src="images/dl02.gif">
						</div>
						<div id="">
							<input type="password"  name="pwd" id="pwd" class="input-group" value="" />


						</div>
					</div>
				</div>
				
				<div class="radios">
					<div class="mui-input-row mui-radio ">
						<input name="radios" type="radio" role="" value="student">
							<label>学生</label>
					</div>
					<div class="mui-input-row mui-radio ">
						<input name="radios" type="radio" role="" value="teacher">
							<label>教师</label>
					</div>
					<div class="mui-input-row mui-radio ">
						<input name="radios" type="radio"  role="" value="admin">
							<label>管理员</label>
					</div>
				</div>
				<div class="inline">
					<div id="">
						<input type="submit" name="loginbutton" id="login" class="button" value="登录" onclick=""/>
					</div>
					<div id="">
						<a href="register.jsp"><input type="button" name="resignbutton" id="resign" class="button" value="注册" /></a>
					</div>
				</div>
			</div>
		   </form>




			
			
			<form action="login.do" method="post">
			<div class="infms">
				<div class="infm  middle_left_top">
					<div class="infmtitle">
						<div id="">
							<p>A</p>
						</div>
						<div id="">
							<h4>竞赛成果</h4>
						</div>


					</div>

                    <%
                        DBUtils db = new DBUtils();
						System.out.println("数据库缺少compete_id");
						//数据库缺少compete_id
//						String tableName = "works,groups,compete";
//						String[] field = {"compete_title",
//								"groups.group_name"
//								};
//						String condition = "groups.group_id=works.group_id and " +
//								"groups.work_id=" + usname;
//						//缺少密码
//						//引用db的find方法查找；
//						List<String[]> list = db.find(tableName, field, condition);
//
//						for (String[] arr : list) {
//							if (arr[1].equals(pwd)) {
//								System.out.printf("数据库获取：student_id:%s,student_pwd:%s,name:%s \n", arr[0], arr[1], arr[2]);
//								gotoPage(request, response, "/project_center.jsp");
//							}

					%>
					<%



						String tableName1 = "compete";
						String[] field1 = {"compete_title"};

						//缺少密码
						//引用db的find方法查找；
						List<String[]> list1 = db.find(tableName1, field1, "");

					%>


					<div class="infmtitle1_nav">
						<ul>

							<% for (String[] arr : list1)
							{

							%>
							<li><a href="project_center.jsp"><%=arr[0]%></a></li>
							<%}%>
						</ul>
					</div>
				</div>
				<div class="infm middle_left_bottom ">

					<div class="infmtitle">
						<div id="">
							<p>J</p>
						</div>
						<div id="">
							<h4>竞赛项目</h4>
						</div>

					</div>

					<%



						String tableName2 = "compete";
						String[] field2 = {"compete_title"};

						//缺少密码
						//引用db的find方法查找；
						List<String[]> list2 = db.find(tableName2, field2, "");

					%>


                    <div class="infmtitle1_nav">
                        <ul>

							<% for (String[] arr : list2)
							{

								 %>
							<li><a href="project_center.jsp"><%=arr[0]%></a></li>
							<%}%>
                        </ul>
                    </div>

				</div>
				<div class="infm middle_middle">
					<div class="infmtitle">
						<div id="">
							<p>N</p>
						</div>
						<div id="">
							<h4>通知公告</h4>
						</div>

					</div>
					<%

						String tableName3 = " groups,works";
						String[] field3 = {"groups.group_name","works.grade"};
						String condition3="works.work_id=groups.work_id";
						//缺少密码
						//引用db的find方法查找；
						List<String[]> list3 = db.find(tableName3, field3, condition3);

					%>


					<div class="infmtitle1_nav">
						<ul>

							<% for (String[] arr : list3)
							{

									System.out.println(arr[0]);
							%>
							<li><a href="project_center.jsp"><%=arr[0]+"\t"+arr[1]%></a></li>
							<%}%>
						</ul>
					</div>

				</div>
			</div>
            </form>


        </div>
		<div class="bottom">

		</div>
	</body>
</html>
