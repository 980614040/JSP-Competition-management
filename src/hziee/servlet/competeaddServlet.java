package hziee.servlet;

import hziee.utils.DBUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "competeaddServlet")
public class competeaddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       // System.out.println("competeadd");

        String path = request.getRequestURI();// path = compete.add 获取action路径
        String flag = path.substring(path.lastIndexOf('/')+1, path.lastIndexOf('.')); // flag = compete
        // 去掉路径后缀

        request.setCharacterEncoding("utf-8");
        DBUtils dob = new DBUtils();//实例化
		if("compete".equals(flag)){//判断添加操作

			//获取name=author的标签
            String compete_id = request.getParameter("compete_id");
            String describes= request.getParameter("describes");
            String compete_title = request.getParameter("compete_title");
            String kinds=request.getParameter("kinds");
			//取得当前时间并格式化
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss",Locale.CHINESE);
//			Date date = new Date();
//			String dateStr = sdf.format(date);
			//插入数据
			String[] temp = {"compete_id","describes","compete_title","kinds"};
            String[] values= {compete_id ,describes,compete_title,kinds};

            dob.add("compete",temp,values);//运行sql的语句。

            System.out.println("添加成功");
            gotoPage(request, response,"/competeinfom.jsp");
		}

    }

    protected void gotoPage(HttpServletRequest request, HttpServletResponse response,String path) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        RequestDispatcher rd = request.getRequestDispatcher(path);
        rd.forward(request, response);
        //请求分派
    }
}
