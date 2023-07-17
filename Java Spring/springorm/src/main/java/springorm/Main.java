package springorm;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate5.HibernateTemplate;

public class Main {
    public static void main(String[] args) {
        ApplicationContext context=new ClassPathXmlApplicationContext("Config.xml");
        EmpDao edref=(EmpDao) context.getBean("empDao");
        Emp emp=new Emp(3,"Niraj Kumar","Mumbai");
        int r=edref.insert(emp);
        System.out.println(r);
    }
}