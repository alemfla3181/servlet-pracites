package com.douzone.guestbook.dao.test;

import java.util.List;

import com.douzone.guestbook.dao.guestbookDao;
import com.douzone.guestbook.vo.guestbookVo;


public class guestbookDaoTest {

	public static void main(String[] args) {
		testInsert();
		testFindAll();
	}

	private static void testInsert() {
		guestbookVo vo = new guestbookVo();
		vo.setName("둘리");
		vo.setPassword("1234");
		vo.setMessage("hahahaahahha");
		
	
		new guestbookDao().insert(vo);
	}

	private static void testFindAll() {
		List<guestbookVo> list = new guestbookDao().findAll();
		for(guestbookVo vo : list) {
			System.out.println(vo);
		}
	}
}
