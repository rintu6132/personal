package demo4;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test4 {
    public static void main(String[] args){
        ApplicationContext context=new ClassPathXmlApplicationContext("Personconfig.xml");
        Person pref=(Person) context.getBean("person");
        System.out.println(pref.toString());
    }
}
