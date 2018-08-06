package com.soecode.lyf.web;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import com.soecode.lyf.entity.Book;
import com.soecode.lyf.service.BookService;

@Controller
@RequestMapping("/book") // url:/模块/资源/{id}/细分 /seckill/list
public class BookController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private BookService bookService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    private String list(Model model) {
        List<Book> list = bookService.getList();
        model.addAttribute("list", list);
        // list.jsp + model = ModelAndView
        return "list";// WEB-INF/jsp/"list".jsp
    }

    @RequestMapping(value = "/updateCount/{bookId}")
    private String updateCount(@PathVariable("bookId") long bookId, Model model) {
        int count = bookService.reduceNumber(bookId);
        model.addAttribute("count", count);
        // list.jsp + model = ModelAndView
        return "count";// WEB-INF/jsp/"list".jsp
    }
   @RequestMapping(value = "/ShangJia")
   private String ShangJia(Model model){
        String shangJia = "pageShangJia";
       model.addAttribute("pageShangJia", shangJia);
        return "pageShangJia";
        // 我在这里是怎么和数据库交互的？
        //bookService.reduceNumber();
   }
   //前往book.jsp
    @RequestMapping("/toBook")
    public String toBook(){
        return "book";
    }
    //
   @RequestMapping(value = "/addBook")
    private String addBook( String book_id, int number,Model model){
        //通过book_id查询得到Book对象
        Book book = bookService.getOne(book_id);
        //计算增加之后的数量
        int numberAfter = book.getNumber()+number;

        book.setNumber(numberAfter);
        //更新操作
       bookService.updateBook(book);
       //从数据库查询
       Book book2 = bookService.getOne(book_id);
       model.addAttribute("book",book2);
        return "info";
    }

}
