package hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Main {
    public static void main(String[] args) {
        SessionFactory sessionFactory=new Configuration().configure("config.xml").buildSessionFactory();
        Session session=sessionFactory.openSession();
        Transaction transaction=session.beginTransaction();

        //CRUD operations

//        //create/insert
//
//        Student student=new Student();
//        student.setsId(4);
//        student.setsName("Niraj Kumar");
//        student.setsAddress("Bhopal");
//        System.out.println(student);
//        session.save(student);

        //update

        Student student=new Student();
        student.setsId(5);
        session.update(student);
        transaction.commit();
        session.close();
    }
}