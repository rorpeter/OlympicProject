package olympic.spring4.mvc.service;



import olympic.spring4.mvc.vo.ReplayVO;

import java.util.List;

public interface ReplayService {

    List<ReplayVO> readReplay(String event);
}
