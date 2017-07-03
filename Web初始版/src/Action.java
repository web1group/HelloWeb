import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** 
* @author : Ma Rong 
* @date : 2017年6月24日 上午10:58:59 
* @version : Mars Release (4.5.0)
*/
public interface Action {

	public String execute(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException;
}
