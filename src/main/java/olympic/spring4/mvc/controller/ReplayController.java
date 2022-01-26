package olympic.spring4.mvc.controller;


import olympic.spring4.mvc.service.ReplayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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

    @ResponseBody
    @GetMapping("/replay/morePlay")
    public void morePlay(String rno, HttpServletResponse res){

        try {
            res.setContentType("application/json; charset=UTF-8");

            res.getWriter().print( rsrv.morePlay(rno) );
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    @GetMapping("/replay/view")
    public String view() {

        return "replay/view.tiles";
    }


}
