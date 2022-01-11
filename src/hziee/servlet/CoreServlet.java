package hziee.servlet;


import hziee.utils.DBUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class CoreServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = request.getRequestURI();// path = /Demo/add.do
		String flag = path.substring(path.lastIndexOf('/')+1, path.lastIndexOf('.')); // flag = add
		debug(flag);
		request.setCharacterEncoding("utf-8");
		DBUtils dob = new DBUtils();
//		if("add".equals(flag)){//添加留言
//			debug("添加留言");
//			//获取name=author的标签
//			String author = request.getParameter("author");
//			String content = request.getParameter("content");
//			//取得当前时间并格式化
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss",Locale.CHINESE);
//			Date date = new Date();
//			String dateStr = sdf.format(date);
//			//插入数据
//			String[] temp = {"author","content","publishtime"};
//			String[] values= {author,content,dateStr};
//			dob.add("book",temp , values);
//			//请求分派
//			gotoPage(request, response,"/index.jsp");
//		}
//
//		if("edit".equals(flag)){//修改留言
//////			debug("修改");
//////			String compete_id = request.getParameter("compete_id");
//////			String describes= request.getParameter("describes");
//////			String compete_title = request.getParameter("compete_title");
//////			String kinds=request.getParameter("kinds");
//////			String[] field = {"compete_id","describes","compete_title","kinds"};
//////			String[] value = {compete_id ,describes,compete_title,kinds};
//////			dob.edit("compete", field, value, "compete_id="+compete_id);
//////			gotoPage(request, response,"/competeinfom.jsp");
//////		}
		if("delete".equals(flag)){//删除留言
			debug("删除");
			String compete_id = request.getParameter("compete_id");
			dob.delete("compete", "compete_id="+compete_id);
			gotoPage(request, response,"/competeinfom.jsp");
		}
	}
	private void gotoPage(HttpServletRequest request, HttpServletResponse response,String path)
			throws ServletException, IOException {
		//请求分派
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}
	public static void debug(String str ){
		System.out.println(str);
	}
}
