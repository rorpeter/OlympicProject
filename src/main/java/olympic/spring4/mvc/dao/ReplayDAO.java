package olympic.spring4.mvc.dao;

import olympic.spring4.mvc.vo.ReplayVO;

import java.util.List;

public interface ReplayDAO {

    List<ReplayVO> selectReplay(String event);
}
