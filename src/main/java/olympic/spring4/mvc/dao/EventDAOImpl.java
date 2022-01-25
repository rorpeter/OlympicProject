package olympic.spring4.mvc.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository("edao")
public class EventDAOImpl implements EventDAO {

    @Autowired private JdbcTemplate jdbcTemplate;

    //@Value("#{sql['selectReplay']}") private String selectReplay;



//    @Override
//    public List<ReplayVO> selectReplay(int startnum, String event, String country) {
//        Object[] params = new Object[] { startnum };
//
//
//        String dynaSQL = selectReplay + pagingReplay;
//        String whereSQL = "";
//
//        if ( event != null ) {
//            whereSQL = String.format(" where event = '%s' ", event);
//            dynaSQL = selectReplay + whereSQL + pagingReplay;
//        } else if ( country != null ) {
//            whereSQL = String.format(" where country = '%s' ", country);
//            dynaSQL = selectReplay + whereSQL + pagingReplay;
//        }
//
//
//        return jdbcTemplate.query(dynaSQL, params,
//                (rs, num) -> new ReplayVO(
//                   rs.getString("rno"),
//                   rs.getString("title"),
//                   rs.getString("event"),
//                   rs.getString("country"),
//                   rs.getString("rec"),
//                   rs.getString("views"),
//                   rs.getString("fname"),
//                   rs.getString("contents")
//                ) );
//
//    }

}
