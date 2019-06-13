package sri.spring.boot.simple.simple.persistence.model;


public class BookNotFoundException extends RuntimeException{

    public BookNotFoundException() {
    }

    public BookNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }
}
