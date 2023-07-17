package solutionworld.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import solutionworld.dao.UserDao;
import solutionworld.model.User;
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDao userDao;
    public int addUser(User user) {
        return this.userDao.saveUser(user);
    }

    public String getPassword(User user, String username) {
        String password=this.userDao.getPassword(user,username);
        return password;
    }
}
