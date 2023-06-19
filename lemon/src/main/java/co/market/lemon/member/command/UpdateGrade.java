package co.market.lemon.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;
import co.market.lemon.member.service.MemberService;
import co.market.lemon.member.service.MemberVO;
import co.market.lemon.member.serviceImpl.MemberServiceImpl;

public class UpdateGrade implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		HttpSession session = request.getSession();
		
		vo.setMemberName((String) session.getAttribute("name"));		
		
		
		int totalCount = ms.sellTotalCount(vo);
		
		int n=0;
		if(totalCount>=1 && totalCount<10) {
			n = ms.updateGradeR(vo);
		} else if(totalCount>=10 && totalCount<100) {
			n = ms.updateGradeV(vo);
		} else if(totalCount>=100) {
			n = ms.updateGradeVV(vo);
		}

		if(n != 0) {
			System.out.println("등급 변경 완료. 로그아웃후 다시 로그인시 마이페이지에서 확인 가능");
		}
		return "mypage.do";
	}

}
