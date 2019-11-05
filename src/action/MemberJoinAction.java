
package action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemDAO;
import dto.MemDTO;

public class MemberJoinAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {

		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		MemDTO dto = new MemDTO();
		MemDAO dao = MemDAO.getInstance();

		dto.setuser_id(req.getParameter("user_id"));
		dto.setuser_pw(req.getParameter("user_pw"));
		dto.setuser_pw2(req.getParameter("pw2_pw2"));
		dto.setuser_name(req.getParameter("user_name"));
		dto.setuser_birth(req.getParameter("user_birth"));
		dto.setuser_email(req.getParameter("user_email"));
		dto.setuser_phone(req.getParameter("user_phone"));
		
        System.out.println(req.getParameter("user_id"));
        
		dao.register(dto);

	}// end execute()
}// end class
