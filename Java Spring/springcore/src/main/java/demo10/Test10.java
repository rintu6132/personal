package demo10;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Test10 {
    public static void main(String[] args){
        ApplicationContext context=new AnnotationConfigApplicationContext(JavaConfig.class);
        Student sref=(Student) context.getBean("student1");
//        Student sref=(Student) context.getBean("getStudent");
//        Student sref=(Student) context.getBean("s1");
//        Student sref=(Student) context.getBean("s2");
        sref.study();
    }
}
