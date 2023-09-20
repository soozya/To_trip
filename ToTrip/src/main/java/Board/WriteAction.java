package Board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractCommandController;

//데이터를 직접 입력받는 경우 AbstractCommandController 사용
//Controller 상속: 웹상에서의 일반적인 요청명령어

public class WriteAction extends AbstractCommandController  {

	BoardDAO dao;

	public void setDao(BoardDAO dao) {
		this.dao=dao;
		System.out.println("Write의 setDao() 호출: " +dao);
	}

	/*
	   1. request(요청객체) 2. response(응답객체)
	   3.입력받은 값을 저장한 객체(Object(모두 입력이 가능함))
	   4. BindException:사용자가 값을 입력 시 발생하는 에러 처리 객체
	 * */

	@Override
	protected ModelAndView handle(HttpServletRequest request,
								  HttpServletResponse response,
								  Object command,
								  BindException error)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("WriteAction 실행됨!");
		request.setCharacterEncoding("utf-8");

		BoardCommand data=(BoardCommand)command;

		int PostNum=dao.getPostNum();
		data.setNum(PostNum);
		dao.write(data); //BoardDAO의 write()~

		//("redirect:/요청명령어") : 요청명령어로 이동
		return new ModelAndView("redirect:/list.do");
	}

}