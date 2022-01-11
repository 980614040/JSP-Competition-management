package hziee.servlet;

import hziee.utils.DBUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "registerServlet")
public class registerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("demo");
//获取.do前的名字
        String path = request.getRequestURI();//
        // path = /login.do
        String flag = path.substring(path.lastIndexOf('/') + 1, path.lastIndexOf('.'));
        // flag = login


        System.out.println(".do前的名字:" + flag);


        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("usename");
        String pwd = request.getParameter("pwd");
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String sex = request.getParameter("sex");
        String phone = request.getParameter("phone");
        String radios = request.getParameter("radios");
        System.out.println("radios:" + radios);
        String method = request.getParameter("method");
        //实例化db
        DBUtils db = new DBUtils();
        if (radios.equals("admin")) {
            //判断进入哪种系统
            System.out.println("admin welcome ");
            if ("resign".equals(flag)) {

                String tableName = "admins";
                String[] field = {"admin_id",  "admin_name", "address","admin_phone","admin_sex","admin_pwd"};
                //缺少密码
                //引用db的find方法查找admin；
                String []value = {id,name,address,phone,sex,pwd};
                //缺少密码
                //引用db的find方法查找admin；
                db.add(tableName,field,value);


                //调用 //传送数据到project_center.jsp
            }else {
                System.out.println("账号或密码不合规！");
                gotoPage(request, response, "/login.jsp");
            }

        }
        if (radios.equals("student")) {
            //判断进入哪种系统
            System.out.println("student welcome ");
            if ("resign".equals(flag)) {

                String tableName = "student";
                String[] field = {"student_id",  "student_name", "address","student_phone","student_sex","student_pwd"};
                //缺少密码
                //引用db的find方法查找admin；
                String []value = {id,name,address,phone,sex,pwd};
                //缺少密码
                //引用db的find方法查找admin；
                db.add(tableName,field,value);
//
//
//                //调用 //传送数据到project_center.jsp
           }else {
                System.out.println("账号或密码不合规！");
                gotoPage(request, response, "/login.jsp");
            }

        }
        if (radios.equals("teacher")) {
            //判断进入哪种系统
            System.out.println("teacher welcome ");
            if ("resign".equals(flag)) {

                String tableName = "teacher";
                String[] field = {"teacher_id",  "teacher_name", "address","teacher_phone","teacher_sex","teacher_pwd"};
                //缺少密码
                //引用db的find方法查找admin；
                String []value = {id,name,address,phone,sex,pwd};
                //缺少密码
                //引用db的find方法查找admin；
                db.add(tableName,field,value);
//
//
//                //调用 //传送数据到project_center.jsp
            }else {
                System.out.println("账号或密码不合规！");
                gotoPage(request, response, "/login.jsp");
            }

        }else {
            System.out.println("请选择用户类别");
            gotoPage(request, response, "/login.jsp");
        }

    }





    public void gotoPage(HttpServletRequest request, HttpServletResponse response, String path)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        RequestDispatcher rd = request.getRequestDispatcher(path);
        rd.forward(request, response);
        //请求分派
    }
}
