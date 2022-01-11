<%--
  Created by IntelliJ IDEA.
  User: 98061
  Date: 2020/12/28
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/外部css/bootstrap.min.css"/>
    <script src="js/外部js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/外部js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="css/母版.css"/>
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
                                <p><a href="competeinfom.jsp">竞赛科目信息</a></p>
                            </li>
                            <li>
                                <p><a href="addcompete.jsp">添加竞赛科目</a></p>
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
                                <p>创建通知</p>
                            </li>
                            <li>
                                <p>通知信息</p>
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
                                <p><a href="groupmeun.jsp">小组信息</a></p>
                            </li>
                            <li>
                                <p><a href="gradeup.jsp">成绩录入</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <div class="right_view">
        <div class="muen_title"style="padding: 5px;">
            <p>管理菜单</p>
        </div>
        <div class="right_nav">
            



        </div>
    </div>
</div>
<div class="bottom">

</div>
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

</style>