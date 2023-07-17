package demo10;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "demo10")
public class JavaConfig {
    @Bean
    public Book getBook(){
        Book bref=new Book();
        return bref;
    }
//    @Bean
//    @Bean(name = {"s1","s2"})
//    public Student getStudent()
//    {
//        Student sref=new Student(getBook());
//        return sref;
//    }
}
