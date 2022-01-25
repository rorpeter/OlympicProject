package olympic.spring4.mvc.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import olympic.spring4.mvc.dao.ReplayDAO;
import olympic.spring4.mvc.vo.ReplayVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("rsrv")
public class ReplayServiceImpl implements ReplayService {

    @Autowired private ReplayDAO rdao;


    @Override
    public List<ReplayVO> readReplay(String cpage, String event, String country) {

        int startnum = (Integer.parseInt(cpage)-1)*3;

        return rdao.selectReplay(startnum, event, country);
    }

    @Override
    public int countReplay(String event, String country) {

        return rdao.countReplay(event,country);
    }

    @Override
    public String morePlay(String rno) {
        ObjectMapper mapper = new ObjectMapper();
        String json = "";

        try {
            json = mapper.writeValueAsString(rdao.selectAjaxReplay(rno));
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        return json;
    }


}
