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

@WebServlet(name = "uploadServlet")
public class uploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //获取.do前的名字
        String path = request.getRequestURI();//
        // path = /login.do
        String flag = path.substring(path.lastIndexOf('/') + 1, path.lastIndexOf('.'));
        // flag = login


        System.out.println(".do前的名字:" + flag);


        request.setCharacterEncoding("utf-8");


        String  group_name= request.getParameter("group_name");
        String group_describe = request.getParameter("group_describe");
        String group_id=request.getParameter("group_id");
        String teacher=request.getParameter("teacher");
        String college=request.getParameter("college");
        String phone=request.getParameter("phone");
        String e_mail=request.getParameter("e_mail");
        String student1_name=request.getParameter("student1_name");
        String student1_id=request.getParameter("student1_id");
        String student2_name=request.getParameter("student2_name");
        String student2_id=request.getParameter("student2_id");
        String student3_name=request.getParameter("student3_name");
        String student3_id=request.getParameter("student3_id");

        System.out.println("获取页面数据成功");
        DBUtils db=new DBUtils();
        String tableName = "groups";
        String[] field = {"group_id", "group_name", "teacher_id", "student_id1"
                , "student_id2", "student_id3","work_id","checks"
        };
        String []value = {group_id,group_name,teacher,student1_id,student2_id,student3_id,"1002020006","0"};
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
