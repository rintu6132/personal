package demo8;

import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationListener;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test8 {
    public static void main(String[] args){
        ApplicationContext context=new ClassPathXmlApplicationContext("stereoconfig.xml");
        Student sref=context.getBean("student", Student.class);
//        Student sref=context.getBean("stud1", Student.class);
//        System.out.println(sref);
        System.out.println(sref.hashCode());
        Student sref2=context.getBean("student", Student.class);
        System.out.println(sref2.hashCode());
        Teacher tref=(Teacher) context.getBean("teacher");
        System.out.println(tref.hashCode());
        Teacher tref2=(Teacher) context.getBean("teacher");
        System.out.println(tref2.hashCode());
    }
}
