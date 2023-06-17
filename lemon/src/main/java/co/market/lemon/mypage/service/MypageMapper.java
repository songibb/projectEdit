package co.market.lemon.mypage.service;

import java.util.List;



public interface MypageMapper {
	//판매 내역
	List<MypageVO> sellSelectList(String name);
	
	//찜한 상품
	List<MypageVO> heartSelectList(String id);
	
	//최근 본 상품
	MypageVO recentSelectList(int no);
	
}
