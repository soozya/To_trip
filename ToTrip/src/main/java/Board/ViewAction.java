package Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class ViewAction implements Controller {

	BoardDAO dao;

	public void setDao (BoardDAO dao) {
		this.dao = dao;
		System.out.println("ViewAction setDao() 호출:" +dao);
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
									  HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("ViewAction의 HandlerRequest() 자동 호출 됨!");

		String num=request.getParameter("num");
		dao.viewReadcnt(num); //조회수 먼저 증가 시키려고..

		BoardCommand data=dao.view(num);

		ModelAndView mav=new ModelAndView("view");
		mav.addObject("data",data);

		return mav;
	}

}