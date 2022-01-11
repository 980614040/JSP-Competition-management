package hziee.servlet;

import hziee.utils.DBUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "workchecksServlet")
public class groupchecksServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        System.out.println("129838");
        String path = request.getRequestURI();// path = /Demo/add.do
        String flag = path.substring(path.lastIndexOf('/')+1, path.lastIndexOf('.')); // flag = add

        request.setCharacterEncoding("utf-8");
        DBUtils dob = new DBUtils();

        System.out.println("111");

        	if("checks".equals(flag)){//审核不通过
                System.out.println("000");
			String group_id = request.getParameter("group_id");
            String checks=request.getParameter("checks");
			String[] field = {"checks"};
			String[] value = {checks};
			dob.edit("groups", field, value, "group_id="+group_id);
			gotoPage(request, response,"/groupmeun.jsp");
		}

    }

    protected void gotoPage(HttpServletRequest request, HttpServletResponse response,String path) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        RequestDispatcher rd = request.getRequestDispatcher(path);
        rd.forward(request, response);
        //请求分派
    }
}
