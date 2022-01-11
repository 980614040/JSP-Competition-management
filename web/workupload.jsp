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
    <div class="right_view">
        <div class="muen_title"style="padding: 5px;">
            <p>管理菜单</p>
        </div>
        <div class="right_nav">

            <form action="workup.workup" method="post">


                <table  cellspacing="5" cellpadding="5" align="center" rules="none" width="510px" height="400">
                    <tr>
                        <td>
                            <span></span>竞赛种类：</td>
                        <td><input type="text" name="compete_kinds" /></td>
                    </tr>
                    <tr>
                        <td>
                            <span></span>小组id：</td>
                        <td><input type="text" name="group_id" /></td>
                    </tr>
                    <tr>
                        <td>
                            <span></span>作品id：</td>
                        <td><input type="text" name="work_id" /></td>
                    </tr>
                    <tr>
                        <td>
                            <span></span>附件</td>
                        <td><a href="#">添加</a></td>
                    </tr>
                    <tr>
                        <td ></td>
                        <td><textarea name="describes" rows="8" cols="30" style="border:0;border-radius:5px;background-color:rgba(241,241,241,.98);width: 355px;height: 100px;padding: 10px;resize: none;">请输入作品描述

								</textarea></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <input type="submit" style="width: 50px; margin-left:250px" />
                        </td>
                    </tr>>
                </table>
            </form>



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

    input{
        width:400px ;
        font-size:12px;
        /* 设置输入框中字体的大小 */

        height:30px;
        /* 设置输入框的高度 */

        border-radius:4px;
        /* 设置输入框的圆角的大小 */

        border:1px solid #c8cccf;
        /* 设置输入框边框的粗细和颜色 */

        color:#986655;
        /* 设置输入框中文字的颜色 */

        outline:0;
        /* 将输入框点击的时候出现的边框去掉 */

        text-align:left;
        /* 设置输入框中文字的位置 */

        padding-left: 10px;

        display:block;
        /* 将输入框设置为块级元素 */

        cursor: pointer;

        box-shadow: 2px 2px 5px 1px #ccc;
    }

</style>