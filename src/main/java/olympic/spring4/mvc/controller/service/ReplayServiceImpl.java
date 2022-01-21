package olympic.spring4.mvc.controller.service;

import olympic.spring4.mvc.controller.dao.ReplayDAO;
import olympic.spring4.mvc.controller.vo.ReplayVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("rsrv")
public class ReplayServiceImpl implements ReplayService {

    @Autowired private ReplayDAO rdao;


    @Override
    public List<ReplayVO> readReplay(String event) {

        return rdao.selectReplay(event);
    }
}
