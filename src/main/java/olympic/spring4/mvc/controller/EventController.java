package olympic.spring4.mvc.controller;

import olympic.spring4.mvc.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EventController {

    private EventService esrv;

    @Autowired
    public EventController(EventService esrv) {
        this.esrv = esrv;
    }

    @GetMapping("/event")
    public String event() {

        return "event/list.tiles";
    }

}
