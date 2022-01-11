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

@WebServlet(name = "project_centerServlet")
public class project_centerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("demo");
//获取.center前的名字
        String path = request.getRequestURI();//
        // path = /chooseproject.center
        String flag = path.substring(path.lastIndexOf('/') + 1, path.lastIndexOf('.'));
        // flag = chooseproject


        System.out.println(".center前的名字:" + flag);
        request.setCharacterEncoding("utf-8");

        String kinds = request.getParameter("kinds_radios");

        System.out.println("kinds:" + kinds);

        DBUtils db = new DBUtils();

        String tableName = "compete";
        String[] field = {"compete_title"};
        String condition = "kinds="+"'"+kinds+"'" ;
        System.out.println(condition);
        //缺少密码
        //引用db的find方法查找admin；
        List<String[]> list = db.find(tableName, field, condition);

        for (String[] arr : list) {

                System.out.printf("数据库获取：compete_title:%s \n", arr[0]);
                request.setAttribute("compete_title",arr[0]);
                gotoPage(request, response, "/project_center.jsp");

        }
    }

    protected void gotoPage(HttpServletRequest request, HttpServletResponse response,String path ) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        RequestDispatcher rd = request.getRequestDispatcher(path);

        rd.forward(request, response);
    }
}
