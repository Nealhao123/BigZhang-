package com.soecode.lyf.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.soecode.lyf.dao.BookDao;
import com.soecode.lyf.entity.Book;
import com.soecode.lyf.service.BookService;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BookServiceImpl implements BookService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	// 注入Service依赖
	@Autowired
	private BookDao bookDao;
	@Override
	public List<Book> getList() {
		return bookDao.queryAll(0, 1000);
	}

	//注解 事务管理
	@Transactional
	public int reduceNumber(long bookId){
		int num= bookDao.reduceNumber(bookId);
		//num=10/0;
		return num;
	}



}
