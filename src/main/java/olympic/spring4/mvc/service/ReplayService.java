package olympic.spring4.mvc.service;



import olympic.spring4.mvc.vo.ReplayVO;

import java.util.List;

public interface ReplayService {

    List<ReplayVO> readReplay(String cpage, String event, String country);

    int countReplay(String event, String country);

    String morePlay(String rno);

    ReplayVO readOneReplay(String rno);

    List<ReplayVO> readAllReplay();
}
