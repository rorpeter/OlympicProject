package olympic.spring4.mvc.controller.service;



import olympic.spring4.mvc.controller.vo.ReplayVO;

import java.util.List;

public interface ReplayService {

    List<ReplayVO> readReplay(String event);
}
