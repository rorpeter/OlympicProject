package olympic.spring4.mvc.service;


import olympic.spring4.mvc.vo.EventVO;

public interface EventService {

    EventVO readOneEvent(String event);
}
