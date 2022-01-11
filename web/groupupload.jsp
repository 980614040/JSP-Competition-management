<%--
  Created by IntelliJ IDEA.
  User: 98061
  Date: 2020/12/28
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
</head>
<link rel="stylesheet" type="text/css" href="css/外部css/bootstrap.min.css"/>
<script src="js/外部js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/外部js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="css/project_center.css">
<link rel="stylesheet" type="text/css" href="css/母版.css"/>

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
                    <li ><a href="#">首页</a></li>

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
                    <li><a href="#">作品提交</a></li>
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
                        <p>我的报名</p>
                    </div>
                </div>
                <div class="managemuen_2">
                    <div class="muen_title_2">
                        <p>作品管理</p>

                    </div>
                    <div class="muen_nav">
                        <p>我的作品</p>
                    </div>
                </div>
                <div class="managemuen_2">
                    <div class="muen_title_2">
                        <p>竞赛成绩管理</p>

                    </div>
                    <div class="muen_nav">
                        <p>我的竞赛成绩</p>
                    </div>
                </div>
            </div>


        </div>
    </div>

    <form method="post" action="upload.up">
    <div style="padding-top: 50px "class="groupinfmup">
        <table border="1" cellspacing="5" cellpadding="5" rules="none" align="center" width="60%" height="300">
            <tr>
                <td class="inputTitle">
                    <span class="emphasize"></span>小组名称:</td>
                <td><input type="text" name="group_name" /></td>
            </tr>
            <tr>
                <td class="inputTitle">
                    <span class="emphasize"></span>小组id:</td>
                <td><input type="text" name="group_id" /></td>
            </tr>
            <tr>
                <td class="inputTitle">小组介绍：</td>
                <td><textarea name="group_describe" rows="4">
							</textarea></td>
            </tr>
        </table>
    </div>
    <div class="groupinfmup">
        <table border="1" cellspacing="5" cellpadding="5" align="center" rules="none" width="60%" height="400" border-collapse:collapse;>
            <caption>小组成员</caption>
            <tr>
                <td class="inputTitle">
                    <span class="emphasize"></span>带队老师:</td>
                <td><input type="text" name="teacher" class="reg_title" /></td>
                <td class="inputTitle">
                    <span class="emphasize"></span>学院:</td>
                <td><input type="text" name="college" class="reg_title" /></td>
            </tr>
            <tr>
                <td class="inputTitle">
                    <span class="emphasize"></span>手机号:</td>
                <td><input type="text" name="phone" class="reg_title" /></td>
                <td class="inputTitle">
                    <span class="emphasize"></span>邮箱:</td>
                <td><input type="text" name="e_mail" class="reg_title" /></td>
            </tr>
            <tr>
                <td class="inputTitle">
                    <span class="emphasize"></span>成员1:</td>
                <td><input type="text" name="student1_name" class="reg_title" /></td>
                <td class="inputTitle">
                    <span class="emphasize"></span>学号:</td>
                <td><input type="text" name="student1_id" class="reg_title" /></td>
            </tr>
            <tr>
                <td class="inputTitle">
                    <span class="emphasize"></span>成员2:</td>
                <td><input type="text" name="student2_name" class="reg_title" /></td>
                <td class="inputTitle">
                    <span class="emphasize"></span>学号:</td>
                <td><input type="text" name="student2_id" class="reg_title" /></td>
            </tr>
            <tr>
                <td class="inputTitle">
                    <span class="emphasize"></span>成员3:</td>
                <td><input type="text" name="student3_name" class="reg_title" /></td>
                <td class="inputTitle">
                    <span class="emphasize"></span>学号:</td>
                <td><input type="text" name="student3_id" class="reg_title" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" name="addstudent" class="button1" value="添加小组成员" width="100"/></td>
                <td class="inputTitle">
                    <span class="emphasize"></span></td>
                <td></td>
            </tr>
        </table>

    </div>
    <div style="text-align:center">
        <td colspan="2">
            <input type="submit" name="提交" class="button2"/>
            <input type="submit" name="返回" class="button3" value="返回"/></td>

    </div>
    </form>
<div class="bottom">

</div>

</body>
</html>
<style type="text/css">


    .button1{
        width: 100px;
        margin-left: 300px;
    }
    .button2{
        width: 60px;

        margin-top: 10px;

    }
    .button3{
        width: 60px;
        margin-top: 10px;

    }
    .groupinfmup{
        position: relative;
        left: 370px;
        top: -500px;
    }
a:hover{
    color: red;
    text-decoration: none;
}
</style>