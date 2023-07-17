package solutionworld.service;

import solutionworld.model.User;

public interface UserService {
    public int addUser(User user);
    public String getPassword(User user,String username);
}
