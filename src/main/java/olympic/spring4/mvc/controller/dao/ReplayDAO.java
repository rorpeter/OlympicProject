package olympic.spring4.mvc.controller.dao;

import olympic.spring4.mvc.controller.vo.ReplayVO;

import java.util.List;

public interface ReplayDAO {

    List<ReplayVO> selectReplay(String event);
}
