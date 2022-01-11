<%@ page import="java.util.List" %>
<%@ page import="hziee.utils.DBUtils" %><%--
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
            <p>竞赛科目信息</p>
        </div>
        <form action="competeinfom.delete" method="post">
        <div class="right_nav">
            <a href="search.jsp" target=_blank>查找留言</a>
            <table width="551" border="0" cellpadding="0" cellspacing="1" bgcolor="#999999">
                <tr>
                    <td width="80" bgcolor="#CCCCCC">编号</td>
                    <td width="91" bgcolor="#CCCCCC">名称</td>
                    <td width="120" bgcolor="#CCCCCC">种类</td>

                    <td width="108" bgcolor="#CCCCCC">操作</td>
                </tr>
                <%
                    DBUtils dob=new DBUtils();
                    String[] temp = {"compete_id","compete_title","kinds"};
//      List<String[]> vec = dob.find("book",temp,null);
                        String str  =request.getParameter("pageNum");
                        int pageNum = 1;
                        if (str!=null) {
                            pageNum = Integer.parseInt(str);
                        }

                        int pageSize = 10;
                        List<String[]> vec1 = dob.find("compete",temp,"");
                        int total = vec1.size();
                        int pageCount = total % pageSize ==0 ? total / pageSize : total / pageSize+1;//总的页码

                        List<String[]> vec = dob.find("compete",temp,"1=1 order by compete_id desc limit "+(pageNum-1)*pageSize+","+pageSize+"");//排序 页码pageNum 每页pageSize=10条，
                        for(int i=0;i<vec.size();i++){
                            String[] ss = vec.get(i);
                %>
                <tr>
                    <td bgcolor="#FFFFFF"><%=ss[0]%></td>
                    <td bgcolor="#FFFFFF"><%=ss[1]%></td>
                    <td bgcolor="#FFFFFF">
                        <%=ss[2].length()>6?ss[2].substring(0,5)+"...":ss[2]%></td>

                    <td bgcolor="#FFFFFF"><a href="detail.jsp?id=<%=ss[0]%>" target=_blank>查看</a>/<a href="modify.jsp?id=<%=ss[0]%>">修改</a>/<a href="delete.delete?compete_id=<%=ss[0] %>">删除</a></td>
                </tr>
                <% } %>
            </table>
            <%
                if(pageNum!=1){
            %>
            <a href="index.jsp?pageNum=1">首页</a>|
            <a href="index.jsp?pageNum=<%=pageNum-1%>">上一页</a>|
            <%
                }
                if(pageNum<total){
            %>
            <a href="index.jsp?pageNum=<%=pageNum+1%>">下一页</a>|
            <a href="index.jsp?pageNum=<%=pageCount%>">尾页</a>
            <%
                }
            %>
            <p><br>
            </p>



        </div>
        </form>
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