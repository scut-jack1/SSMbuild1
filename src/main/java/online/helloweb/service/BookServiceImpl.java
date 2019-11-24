package online.helloweb.service;

import online.helloweb.dao.BookDao;
import online.helloweb.pojo.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author jack
 * @date 2019/11/23 0023
 */
public class BookServiceImpl implements BookService {
    //组合dao
    private BookDao bookDao;

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Override
    public int addBook(Books books) {
        return bookDao.addBook(books);
    }

    @Override
    public int deleteBookByID(int id) {
        return bookDao.deleteBookByID(id);
    }

    @Override
    public int updateBook(Books books) {
        return bookDao.updateBook(books);
    }

    @Override
    public Books queryBookByID(int id) {
        return bookDao.queryBookByID(id);
    }

    @Override
    public List<Books> queryAllBook() {
        return bookDao.queryAllBook();
    }
}
