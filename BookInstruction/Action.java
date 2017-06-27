/*
 * @author:Zheng Yuxuan
 */

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {

	public String execute(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException;
}
