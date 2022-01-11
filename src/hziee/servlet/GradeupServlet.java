package hziee.servlet;

import hziee.utils.DBUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GradeupServlet")
public class GradeupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入gradeupServlet");
        String path = request.getRequestURI();// path = /Demo/add.do
        String flag = path.substring(path.lastIndexOf('/') + 1, path.lastIndexOf('.')); // flag = add

        request.setCharacterEncoding("utf-8");
        DBUtils dob = new DBUtils();

        System.out.println("111");

        if ("gradeup".equals(flag)) {
            System.out.println("000");
            String work_id = request.getParameter("work_id");
            System.out.println(work_id);
            String grade = request.getParameter("grade");
            System.out.println(grade);
            String[] field = {"grade"};
            String[] value = {grade};
            dob.edit("works", field, value, "work_id=" + work_id);
            System.out.println("修改成功");
            gotoPage(request, response, "/gradeup.jsp");


    }
    }

    protected void gotoPage(HttpServletRequest request, HttpServletResponse response,String path) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        RequestDispatcher rd = request.getRequestDispatcher(path);
        rd.forward(request, response);
    }
}
