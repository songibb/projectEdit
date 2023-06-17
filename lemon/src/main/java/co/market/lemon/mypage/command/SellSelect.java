package co.market.lemon.mypage.command;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;
import co.market.lemon.mypage.service.MypageService;
import co.market.lemon.mypage.service.MypageVO;
import co.market.lemon.mypage.serviceImpl.MypageServiceImpl;

public class SellSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MypageVO vo = new MypageVO();
		HttpSession session = request.getSession();
		vo.setMemberName((String) session.getAttribute("name"));
		String memberName = vo.getMemberName();
		
		if(request.getParameter("productSearch") == null) {
			vo.setProductSearch("");
		} else {
			vo.setProductSearch(request.getParameter("productSearch"));
		}
			
		String productSearch = vo.getProductSearch();
			
		MypageService ms = new MypageServiceImpl();
		List<MypageVO> sellList = new ArrayList<MypageVO>();


		sellList = ms.sellSelect(memberName, productSearch);
		request.setAttribute("sellList", sellList);	
		
		return "mypage/sellSelectList";
	}

}
