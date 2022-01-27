package olympic.spring4.mvc.service;


import olympic.spring4.mvc.dao.EventDAO;
import olympic.spring4.mvc.vo.EventVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("esrv")
public class EventServiceImpl implements EventService {

    @Autowired
    private EventDAO edao;

    @Override
    public EventVO readOneEvent(String event) {

        return edao.selectOneEvent(event);
    }
}
