package online.helloweb.controller;

import online.helloweb.pojo.Books;
import online.helloweb.service.BookService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author jack
 * @date 2019/11/24 0024
 */
@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    //展示全部书籍
    @RequestMapping("/allbook")
    public String list(Model model) {
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list", list);
        return "allBook";
    }

    //跳转到新增书籍页面
    @RequestMapping("/toAddBook")
    public String toAddBook() {
        return "addBook";
    }

    //新增书籍页面
    @RequestMapping("/addBook")
    public String addBook(Books books) {
        System.out.println("调试信息" + books);
        bookService.addBook(books);
        return "redirect:/book/allbook";//重定向到首页
    }

    //跳转到修改页面
    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(int id, Model model) {
        Books books = bookService.queryBookByID(id);
        System.out.println("调试信息" + books);
        model.addAttribute("book",books);
        return "updateBook";
    }

    //修改书籍
    @RequestMapping("/updateBook")
    public String updateBook(Books books, Model model) {
        System.out.println("调试信息" + books);
        bookService.updateBook(books);
        //更新最新的书籍
        Books books1 = bookService.queryBookByID(books.getBookID());
        model.addAttribute("books", books1);
        return "redirect:/book/allbook";//重定向到首页
    }

    //删除书籍，使用restful风格
    @RequestMapping("/del/{bookID}")
    public String deleteBook(@PathVariable("bookID") int id) {
        bookService.deleteBookByID(id);
        return "redirect:/book/allbook";//重定向到首页

    }
}
