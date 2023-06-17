package co.market.lemon.member.command;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.market.lemon.common.Command;

public class MemberLogout implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.invalidate(); 
			
		Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies) {
			if(c.getName().startsWith("productCId")) {
				c.setPath("/");
				c.setMaxAge(0);
				response.addCookie(c);
			}
		}
		return "main/main";
	}

}
