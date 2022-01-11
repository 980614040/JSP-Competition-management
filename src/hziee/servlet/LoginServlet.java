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

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("demo");
//获取.do前的名字
        String path = request.getRequestURI();//
        // path = /login.do
        String flag = path.substring(path.lastIndexOf('/') + 1, path.lastIndexOf('.'));
        // flag = login


        System.out.println(".do前的名字:" + flag);


        request.setCharacterEncoding("utf-8");


//获取账号密码
        String usname = request.getParameter("usename");
        String pwd = request.getParameter("pwd");
        String radios = request.getParameter("radios");
        System.out.println("radios:" + radios);
        String method = request.getParameter("method");
        //实例化db
        DBUtils db = new DBUtils();

        //判断.do前的名字进入相应操作
        if (radios.equals("admin")) {
            //判断进入哪种系统
            System.out.println("admin welcome ");
            if ("login".equals(flag)) {

                String tableName = "admins";
                String[] field = {"admin_id", "admin_pwd", "admin_name", "address"};
                String condition = "admin_id=" + usname;
                //缺少密码
                //引用db的find方法查找admin；
                List<String[]> list = db.find(tableName, field, condition);

                for (String[] arr : list) {
                    if (arr[1].equals(pwd)) {
                        System.out.printf("数据库获取：admin_id:%s,admin_pwd:%s,name:%s \n", arr[0], arr[1], arr[2]);
                        gotoPage(request, response, "/母版2.jsp");
                    } else {

                        System.out.println("账号或密码错误！");
                        gotoPage(request, response, "/login.jsp");
                    }
                }
                //得到对应id的所有信息


                //调用 //传送数据到project_center.jsp
            }

        }


        else if (radios.equals("student")) {
            //判断进入哪种系统
            System.out.println("student welcome ");
            if ("login".equals(flag)) {

                String tableName = "students";
                String[] field = {"student_id", "student_pwd", "student_name", "student_phone"};
                String condition = "student_id=" + usname;

                //引用db的find方法查找；
                List<String[]> list = db.find(tableName, field, condition);

                for (String[] arr : list) {
                    if (arr[1].equals(pwd)) {
                        System.out.printf("数据库获取：student_id:%s,student_pwd:%s,name:%s \n", arr[0], arr[1], arr[2]);
                        gotoPage(request, response, "/project_center.jsp");
                    } else {

                        System.out.println("账号或密码错误！");
                        gotoPage(request, response, "/login.jsp");
                    }
                }
                //得到对应id的所有信息


                //调用 //传送数据到project_center.jsp
            }
        }



        else if (radios.equals("teacher")) {
            //判断进入哪种系统
            System.out.println("teacher welcome ");
            if ("login".equals(flag)) {

                String tableName = "teachers";
                String[] field = {"teacher_id", "teacher_pwd", "teacher_name", "address"};
                String condition = "teacher_id=" + usname;

                //引用db的find方法查找；
                List<String[]> list = db.find(tableName, field, condition);

                for (String[] arr : list) {
                    if (arr[1].equals(pwd)) {
                        System.out.printf("数据库获取：teacher_id:%s,teacher_pwd:%s,name:%s \n", arr[0], arr[1], arr[2]);
                        gotoPage(request, response, "/project_center.jsp");
                    } else {

                        System.out.println("账号或密码错误！");
                        gotoPage(request, response, "/login.jsp");
                    }
                }
                //得到对应id的所有信息


                //调用 //传送数据到project_center.jsp
            }
        }

        else {
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
