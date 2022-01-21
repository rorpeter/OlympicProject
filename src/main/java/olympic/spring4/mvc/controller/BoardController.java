package olympic.spring4.mvc.controller;


import olympic.spring4.mvc.service.BoardService;
import olympic.spring4.mvc.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BoardController {
    private BoardService bsrv;

    @Autowired //생성자를 이용한 객체 주입
    public BoardController(BoardService bsrv){
        this.bsrv=bsrv;

    }

    //새글쓰기
    @GetMapping("/board/write")
    private String write() {

        return"board/write.tiles";
    }

    //새글쓰기 처리하기
    @PostMapping("/board/write")
    public String writeok(BoardVO bvo, HttpServletRequest req, RedirectAttributes rds){

        String returnPage= "redirect:/board/write";
        /*String 구글 리캡챠*/
        return returnPage;
    }
    //목록보기
    @GetMapping("/board/list")
    public ModelAndView list(ModelAndView mv, String cpage, String ftype, String fkey){

        if(cpage == null) cpage = "1";

        mv.setViewName("board/list.tiles");
        mv.addObject("bd",bsrv.readBoard(cpage, ftype, fkey));
        mv.addObject("bdcnt",bsrv.countBoard(ftype, fkey)); //총게시물 수

        return mv;
    }

    //본문보기
    @GetMapping("/board/view")
    public ModelAndView view(String bno, ModelAndView mv){

        mv.setViewName("board/view.tiles");
        bsrv.viewCountBoard(bno); //본문글 조회수 갱신
        mv.addObject("bvo", bsrv.readOneBoard(bno)); //본문글 조회
       //mv.addObject("rps", bsrv.readReply(bno));//댓글 조회
        return mv;
    }
    //댓글쓰기 처리
    /*@PostMapping("/board/replyok")
    public String replyok(ReplyVO rvo) {
        // 작성한 댓글을 확인하기 위해
        // 현재 보고있는 본문페이지를 다시 한번 불러옴
        String returnPage = "redirect:/board/view?bno=" + rvo.getBno();

        // 댓글번호 여부에 따라 댓글/대댓글 여부 판단
        if(rvo.getCno() == null)brsrv.newReply(rvo);
        else brsrv.newReReply(rvo);

        return returnPage;
    }*/
}
