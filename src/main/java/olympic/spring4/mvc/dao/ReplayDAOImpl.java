package olympic.spring4.mvc.dao;


import olympic.spring4.mvc.vo.ReplayVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("rdao")
public class ReplayDAOImpl implements ReplayDAO {

    @Autowired private JdbcTemplate jdbcTemplate;
    @Value("#{sql['selectReplay']}") private String selectReplay;


    @Override
    public List<ReplayVO> selectReplay(String event) {
        Object[] params = new Object[] { event };

//        String dynaSQL = selectReplay;
//        String whereSQL = "";
//
//        if ( event != null) {
//            whereSQL = String.format(" where event like %s", event);
//            dynaSQL = selectReplay + whereSQL;
//
//        }


        return jdbcTemplate.query(selectReplay, params,
                (rs, num) -> new ReplayVO(
                   rs.getString("rno"),
                   rs.getString("title"),
                   rs.getString("event"),
                   rs.getString("country"),
                   rs.getString("rec"),
                   rs.getString("views") ) );

    }
}
