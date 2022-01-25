package olympic.spring4.mvc.dao;

import olympic.spring4.mvc.vo.ReplayVO;

import java.util.List;

public interface ReplayDAO {

    List<ReplayVO> selectReplay(int startnum, String event, String country);

    int countReplay(String event, String country);

    List<ReplayVO> selectAjaxReplay(String rno);
}
