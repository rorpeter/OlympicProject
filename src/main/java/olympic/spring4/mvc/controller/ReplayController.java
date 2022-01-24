package olympic.spring4.mvc.controller;


import olympic.spring4.mvc.service.ReplayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReplayController {

    private ReplayService rsrv;

    @Autowired
    public ReplayController(ReplayService rsrv) {
        this.rsrv = rsrv;
    }

    @GetMapping("/replay")
    public ModelAndView list(ModelAndView mv, String cpage, String event, String country) {

        if (cpage == null) cpage = "1";

        mv.setViewName("replay/list.tiles");

        mv.addObject("rbd", rsrv.readReplay(cpage, event, country));
        mv.addObject("rbdcnt", rsrv.countReplay(event,country));

        return mv;
    }


}
