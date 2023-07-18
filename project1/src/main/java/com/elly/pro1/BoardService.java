package com.elly.pro1;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.stereotype.Service;

@Service("boardService")
//보드서비스타입이기도하고, boardService라는 이름으로 불릴꺼야.
public class BoardService {

	@Inject
	@Named("boardDAO")
	private BoardDAO boardDAO;

//보드 리스트 불러오는 메소드	
	public List<Map<String, Object>> baordList() {
		return boardDAO.boardList();
		
	}

	public BoardDTO detail(String bno) {
		return boardDAO.detail(bno);
	}

	public void write(BoardDTO dto) {
		boardDAO.write(dto);
	}

		
	
}
