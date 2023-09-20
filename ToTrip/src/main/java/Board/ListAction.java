package Board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

//Controller인터페이스 : Request 처리+처리결과를 ModelAndView를 이용하여 view에 반환
public class ListAction implements Controller {

	BoardDAO dao;

	public void setDao(BoardDAO dao) { //setter메서드
	  this.dao = dao;
	  System.out.println("List의 setDao()호출: "+dao);
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
									  HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("ListAction의 handleRequest() 호출됨!");
		List list=dao.list();

		//화면에 출력할 list.jsp에 전달할 페이지와 전달할 값 설정
		ModelAndView mav=new ModelAndView(); //이동할 페이지(공유)와 보내줄 데이터 담기
		mav.setViewName("community"); //이동할 페이지명
		mav.addObject("list",list); //키명, 저장값

		return mav; // =community.jsp
	}

}