package online.helloweb.service;

import online.helloweb.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author jack
 * @date 2019/11/23 0023
 */
public interface BookService {
    //增加一个books
    int addBook(Books books);
    //根据ID删除books
    int deleteBookByID(@Param("bookID") int id);
    //更新books
    int updateBook(Books books);
    //根据ID查询book
    Books queryBookByID(@Param("bookID") int id);
    //查询全部的书
    List<Books> queryAllBook();
}
