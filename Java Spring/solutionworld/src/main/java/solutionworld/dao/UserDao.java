package solutionworld.dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import solutionworld.model.User;
import java.util.List;

@Repository
public class UserDao {
    public int id;
    @Autowired
    private HibernateTemplate hibernateTemplate;
    @Transactional
    public int saveUser(User user){
        id=(Integer) this.hibernateTemplate.save(user);
        return id;
    }

    public String getPassword(User user,String username){

        List<User> list=this.hibernateTemplate.findByExample(user);
        String temp="";
        if(!list.isEmpty())
            temp=list.get(0).getPassword();
        return temp;
    }
}
