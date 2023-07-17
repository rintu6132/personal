package demo3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test3 {
    public static void main(String[] args){
        ApplicationContext context=new ClassPathXmlApplicationContext("Refconfig.xml");
        A aref=(A) context.getBean("aref");
        System.out.println(aref.getX());
        System.out.println(aref.getOb().getY());
        System.out.println(aref);
    }
}
