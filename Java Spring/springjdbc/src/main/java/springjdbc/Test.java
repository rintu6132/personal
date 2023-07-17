package springjdbc;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;
//import org.springframework.jdbc.core.JdbcTemplate;

public class Test {
    public static void main(String[] args) {
//        ApplicationContext context=new ClassPathXmlApplicationContext("config.xml");
        ApplicationContext context = new AnnotationConfigApplicationContext(JdbcConfig.class);
//        JdbcTemplate temp=(JdbcTemplate) context.getBean("jt");
//        String query="insert into student(id,name,address) values(?,?,?)";
//        int result= temp.update(query,125,"Prashant","Patna");
//        System.out.println(result);
        StudentDao sdref = (StudentDao) context.getBean("sdi");
//        Student student=new Student();
//        student.setId(4);
//        student.setName("Niraj Kumar");
//        student.setAddress("Chapra");
//        int res=sdref.insert(student);
//        System.out.println(res+" row added!");
//        student.setId(124);
//        student.setName("Prashant Kumar");
//        student.setAddress("Bhagalpur");
//        int res=sdref.update(student);
//        System.out.println(res+" row updated!");
//        int res=sdref.delete(125);
//        System.out.println(res+" row deleted!");
//        Student student=sdref.getStudent(123);
//        System.out.println(student);
        List<Student> students=sdref.getAllStudents();
        for(Student student:students){
            System.out.println(student);
        }
    }
}