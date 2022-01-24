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
    @Value("#{sql['pagingReplay']}") private String pagingReplay;
    @Value("#{sql['countReplay']}") private String countReplay;


    @Override
    public List<ReplayVO> selectReplay(int startnum, String event, String country) {
        Object[] params = new Object[] { startnum };


        String dynaSQL = selectReplay + pagingReplay;
        String whereSQL = "";

        if ( event != null ) {
            whereSQL = String.format(" where event = '%s' ", event);
            dynaSQL = selectReplay + whereSQL + pagingReplay;
        } else if ( country != null ) {
            whereSQL = String.format(" where country = '%s' ", country);
            dynaSQL = selectReplay + whereSQL + pagingReplay;
        }


        return jdbcTemplate.query(dynaSQL, params,
                (rs, num) -> new ReplayVO(
                   rs.getString("rno"),
                   rs.getString("title"),
                   rs.getString("event"),
                   rs.getString("country"),
                   rs.getString("rec"),
                   rs.getString("views"),
                   rs.getString("fname"),
                   rs.getString("contents")
                ) );

    }

    @Override
    public int countReplay(String event, String country) {

        String dynaSQL = countReplay;
        String whereSQL = "";

        if ( event != null ) {
            whereSQL = String.format(" where event = '%s' ", event);
            dynaSQL = countReplay + whereSQL;
        } else if ( country != null ) {
            whereSQL = String.format(" where country = '%s' ", country);
            dynaSQL = countReplay + whereSQL;
        }


        return jdbcTemplate.queryForObject(dynaSQL, Integer.class );

    }
}
