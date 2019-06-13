package sri.spring.boot.simple.simple.persistence.repo;

import sri.spring.boot.simple.simple.persistence.model.Book;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BookRepository extends CrudRepository<Book, Long> {
    List<Book> findByTitle(String title);
}
