package demo10;

import org.springframework.stereotype.Component;

@Component("student1")
public class Student {
    private Book book;

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Student(Book book) {
        this.book = book;
    }

    public Student() {
    }

    public void study(){
        this.book.bookCost();
        System.out.println("I am reading");
    }
}
