package com.betaplan.krisela.loginandregistration.services;

import com.betaplan.krisela.loginandregistration.models.Book;
import com.betaplan.krisela.loginandregistration.repositories.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;

    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public List<Book> getAllBooks(){
        return bookRepository.findAll();
    }

    /*public List<Book> getAllStudentsByDormId(Long id){
        return bookRepository.findAllByDorm_Id(id);
    }*/


    public Book createBooks(Book book){
        return bookRepository.save(book);
    }
    public Book saveBooks(Book book){
        return bookRepository.save(book);
    }
    public void deleteBook(Long id){
        bookRepository.deleteById(id);
    };

    public Book bookDetails(Long id) {return bookRepository.findById(id).orElse(null);};

    public Book findById(Long id) {
        return bookRepository.findById(id).orElse(null);
    }






}
