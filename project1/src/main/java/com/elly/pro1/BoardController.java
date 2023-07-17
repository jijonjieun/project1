package com.elly.pro1;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {
//유저한테 요청이 오면 컨트롤러가 처리함. 여러컨트롤러가 있어도 사용자가 요청한
//컨트롤러가 동작함.
	// 유저->컨트롤러->서비스->DAO->mybatis -> DB
	
	//Autowired말고 Resource로 연결
	@Resource(name="boardService")
	private BoardService boardService;
	
	

	@GetMapping("/board")//겟보드로 들어오면 아래로 동작해요.
	public String board(Model model) {
		//서비스에서 값 가져오기
		model.addAttribute("list",boardService.baordList());
		
		return "board";
	}
	
	@GetMapping("/detail")
	//요청값을 가지고옴
	public String detail(HttpServletRequest request, Model model) { //여기서 모델은 jsp값붙일떄 쓸려고 넣음
		//bno에 요청하는 값이 있습니다. 이 값을 db까지 보내겠습니다.
		//물음표 뒤에 bno값을 request에 저장하고 그걸 겟파라미터로 
		String bno = request.getParameter("bno");
		
		BoardDTO dto = boardService.detail(bno);
		model.addAttribute("dto", dto);
		return "detail";
	}
	
	
	
}
