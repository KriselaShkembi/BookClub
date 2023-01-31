package com.betaplan.krisela.loginandregistration.repositories;

import com.betaplan.krisela.loginandregistration.models.Book;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookRepository extends CrudRepository<Book, Long> {
    List<Book> findAll();


}
