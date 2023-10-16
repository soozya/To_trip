package Board;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface BoardDAO {


	//1.글 목록보기
		public List list() throws DataAccessException;

	//2.글쓰기 시 게시물 번호
		public int getPostNum() throws DataAccessException;

	//3.글쓰기
		public void write(BoardCommand data) throws DataAccessException;

	//4.글 상세보기 시 조회수 증가
		public void viewReadcnt(String num) throws DataAccessException;

	//5.글 상세보기
		public BoardCommand view (String num)throws DataAccessException;

	//6.글 삭제하기
		public void delete (String num) throws DataAccessException;
}