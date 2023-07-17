package demo7;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test7 {
    public static void main(String[] args){
        ApplicationContext contest=new ClassPathXmlApplicationContext("Stndaloneconfig.xml");
        Person pref=(Person) contest.getBean("p1");
        System.out.println(pref);
        System.out.println(pref.getFriends().getClass().getName());
        Person pref2=(Person) contest.getBean("p2");
        System.out.println(pref2);
    }
}
