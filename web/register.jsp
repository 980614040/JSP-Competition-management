<%--
  Created by IntelliJ IDEA.
  User: 98061
  Date: 2020/12/30
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/外部css/bootstrap.min.css"/>
    <script src="js/外部js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/外部js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="css/母版.css"/>
</head>
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
                    <li><a href="project_center.jsp">首页</a></li>
                    <li><a href="register.jsp">注册</a></li>
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
                    <li><a href="groupupload.jsp">作品提交</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<div class="middle">

    <form  action="resign.register" method="post">

        <div class="loginview ">
            <div class="logintitle">
                <p>注册</p>
            </div>
            <div class="inputs">
                <div class="inline">
                    <div id="">
                        <p>ID</p>
                    </div>
                    <div id="">
                        <input type="text" name="usename" id="usename" value="" class="input-group" />

                    </div>
                </div>
                <div class="inline">
                    <div id="">
                        <p>Password</p>
                    </div>
                    <div id="">
                        <input type="password"  name="pwd" id="pwd" class="input-group" value="" />


                    </div>
                </div>
                <div class="inline">
                    <div id="">
                        <p>姓名</p>
                    </div>
                    <div id="">
                        <input type="text" name="name" id="name" value="" class="input-group" />

                    </div>
                </div>
                <div class="inline">
                    <div id="">
                        <p>电话</p>
                    </div>
                    <div id="">
                        <input type="text" name="phone" id="phone" value="" class="input-group" />

                    </div>
                </div>
                <div class="inline">
                    <div id="">
                        <p>E-mail</p>
                    </div>
                    <div id="">
                        <input type="text" name="address" id="address" value="" class="input-group" />

                    </div>
                </div>
                <div class="inline">
                    <div id="">
                        <p>性别</p>
                    </div>
                    <div id="">
                        <input type="text" name="sex" id="sex" value="" class="input-group" />

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
                    <input type="submit" name="resignbutton" id="resign" class="button" value="注册" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<style>

    .right_view{
        position: relative;
        top: -500px;
        left: 370px;
        width: 60%;
        height: 500px;
        border: 1px solid black;

    }
    .right_view p{
        text-align: left;
        font-size: 30px;
        font-weight: bold;
        color: white;
    }
    .right_nav{
        padding: 20px;
    }
    li{
        list-style: none;
    }

    .competeadd_table{

    }
</style>

