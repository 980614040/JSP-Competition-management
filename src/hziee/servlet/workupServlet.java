package hziee.servlet;

import hziee.utils.DBUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "workupServlet")
public class workupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //获取.do前的名字
        String path = request.getRequestURI();//
        // path = /login.do
        String flag = path.substring(path.lastIndexOf('/') + 1, path.lastIndexOf('.'));
        // flag = login





        request.setCharacterEncoding("utf-8");


        String  group_id= request.getParameter("group_id");
        String work_id=request.getParameter("work_id");
        String describes=request.getParameter("describes");
        String kinds=request.getParameter("kinds");

        System.out.println("获取页面数据成功");


        DBUtils db=new DBUtils();
        String tableName = "works";
        String[] field = {"work_id", "group_id", "describes", "grade","checks","kinds"};
        String []value = {group_id,work_id,describes,"0","0",kinds};
        //缺少密码
        //引用db的find方法查找admin；
        db.add(tableName,field,value);
        System.out.printf("添加成功");
        gotoPage(request, response, "/project_center.jsp");





    }

    protected void gotoPage(HttpServletRequest request, HttpServletResponse response,String path) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        RequestDispatcher rd = request.getRequestDispatcher(path);
        rd.forward(request, response);
    }
}
