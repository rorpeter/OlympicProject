package olympic.spring4.mvc.dao;


import olympic.spring4.mvc.vo.EventVO;

public interface EventDAO {

    EventVO selectOneEvent(String event);
}
