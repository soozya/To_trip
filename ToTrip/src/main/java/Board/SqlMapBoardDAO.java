package Board;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

/*
  SqlSessionDaoSupport 상속시 getSqlSession()을 이용해서 SqlSession객체를 얻어오기 편하다.
 */
public class SqlMapBoardDAO extends SqlSessionDaoSupport implements BoardDAO {


	@Override
	public List list() throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("list");
	}


    @Override
	public int getPostNum() throws DataAccessException {
	    Integer result = (Integer)getSqlSession().selectOne("getPostNum");
	    if (result != null) {
	        return result.intValue() + 1;
	    } else {
	        return 1; // 결과가 null인 경우 1을 반환하여 첫 번째 글번호로 설정
	    }
	}

	@Override
	public void write(BoardCommand data) throws DataAccessException{
		//글 쓰기insert : .insert("id",전달할 매개변수)
		getSqlSession().insert("write",data);
	}

    @Override
	public void viewReadcnt(String num) throws DataAccessException{
		//조회수 증가update : .update("id",전달할 매개변수)
		getSqlSession().update("viewReadcnt",num);
	}

	@Override
	public BoardCommand view (String num)throws DataAccessException{
		return (BoardCommand)getSqlSession().selectOne("view",num);
	}

	@Override
	public void delete (String num) throws DataAccessException{
		getSqlSession().delete("delete",num);
	}

}