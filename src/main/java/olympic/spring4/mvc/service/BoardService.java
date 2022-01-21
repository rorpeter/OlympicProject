package olympic.spring4.mvc.service;

import olympic.spring4.mvc.vo.BoardVO;

import java.util.List;

public interface BoardService {
    List<BoardVO> readBoard(String cpage, String ftype, String fkey);

    int countBoard(String ftype, String fkey);


    BoardVO readOneBoard(String bno);

    void viewCountBoard(String bno);


}
