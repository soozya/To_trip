package Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class DeleteAction implements Controller {

	BoardDAO dao;

	public void setDao(BoardDAO dao) {
		this.dao=dao;
		System.out.println("delete에서 setDao 호출:" +dao);
	}
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
									  HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		String num=request.getParameter("num");

		System.out.println("삭제하려는 글번호: "+num);
		System.out.println("DeleteAction 실행중");
		dao.delete(num);

		ModelAndView mav= new ModelAndView();
		mav.setViewName("redirect:/list.do");

		return mav;
	}

}