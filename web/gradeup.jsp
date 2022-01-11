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
            <p>成绩录入</p>
        </div>
        <form action="gradeup.gradeup" method="post">
            <div class="right_nav">
                <a href="search.jsp" target=_blank>查找小组</a>
                <table width="551px" border="0" cellpadding="0" cellspacing="1" bgcolor="#999999">
                    <tr>
                        <td width="80px" height="20px" bgcolor="#CCCCCC" style="height: 20px;width: 80px" >编号</td>
                        <td width="91px" height="20px" bgcolor="#CCCCCC"style="height: 20px;width: 91px">项目名称</td>
                        <td width="91px"  height="20px" bgcolor="#CCCCCC"style="height: 20px;width: 91px">组名</td>
                        <td width="120px" height="20px" bgcolor="#CCCCCC"style="height: 20px;width: 120px">成绩</td>
                        <td width="108px" height="20px" bgcolor="#CCCCCC"style="height: 20px;width: 108px">操作</td>
                    </tr>
                    <%
                        DBUtils dob=new DBUtils();
                        String[] temp = {"works.work_id","grade","work_title","group_name"};
//      List<String[]> vec = dob.find("book",temp,null);
                        String str  =request.getParameter("pageNum");
                        int pageNum = 1;
                        if (str!=null) {
                            pageNum = Integer.parseInt(str);
                        }

                        int pageSize = 10;
                        List<String[]> vec1 = dob.find("works,groups",temp,"");
                        int total = vec1.size();
                        int pageCount = total % pageSize ==0 ? total / pageSize : total / pageSize+1;//总的页码

                        List<String[]> vec = dob.find("works,groups",temp,"works.group_id=groups.group_id");//排序 页码pageNum 每页pageSize=10条，
                        for(int i=0;i<vec.size();i++){
                            String[] ss = vec.get(i);
//                            System.out.println(ss[0]);
//                            System.out.println(ss[1]);
//                            System.out.println(ss[2]);
//                            System.out.println(ss[3]);

                    %>
                    <tr>
                        <td width="120" bgcolor="#FFFFFF">
                            <input type="text"class="workid" name="work_id" value="<%=ss[0]%>">
                        </td>
                        <td width="100" bgcolor="white"><%=ss[2]%>
                        </td>
                          <td width="100" bgcolor="white"><%=ss[3]%>
                          </td>
                        <td width="91" bgcolor="#FFFFFF"><%=ss[1]%></td>

                        <td bgcolor="#FFFFFF" width="100%">
                               <input type="text" name="grade" class="grade" />
                            <input type="submit" name="up" class="" value="上传成绩"/>
<%--                        <a href="gradeup.gradeup?work_id=<%=ss[0] %>&&grade=1"></a>--%>
                        </td>
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
    .grade{
        width: 60px;
        height: 30px;
        margin-left: -70px;

    }
.workid{
    background-color: white;
    border: none;
}
    .right_view{
        position: relative;
        top: -500px;
        left: 370px;
        width: 60%;

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
td{
    width: 1;
}
    .middle{
        height: 1200px;
    }
</style>