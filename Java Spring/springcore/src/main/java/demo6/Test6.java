package demo6;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test6 {
    public static void main(String[] args){
        ApplicationContext context=new ClassPathXmlApplicationContext("Autowireconfig.xml");
        Emp eref=context.getBean("emp1",Emp.class);
        System.out.println(eref);
    }
}
