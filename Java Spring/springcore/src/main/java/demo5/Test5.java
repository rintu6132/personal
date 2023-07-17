package demo5;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test5 {
    public static void main(String[] args){
        AbstractApplicationContext context=new ClassPathXmlApplicationContext("Samosaconfig.xml");
//        Samosa sref=(Samosa) context.getBean("s1");
//        System.out.println(sref);
//        System.out.println("-----------------------------------------------------");
//        Pepsi pref=(Pepsi) context.getBean("p1");
//        System.out.println(pref);
//        System.out.println("-----------------------------------------------------");
        Pizza pzref=(Pizza) context.getBean("pz1");
        System.out.println(pzref);
        context.registerShutdownHook();
    }
}
