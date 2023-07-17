package solutionworld.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import solutionworld.model.User;
import solutionworld.service.UserService;

@Controller
public class HomeController {
    @Autowired
    private UserService userService;
    @RequestMapping(value = "/signup",method = RequestMethod.POST)
    public  String showSignUp(Model model)
    {
        return "signup";
    }
    @RequestMapping(value = "handlesignup",method = RequestMethod.POST)
    public String handleSignUp(@ModelAttribute("user") User user, Model model){
        this.userService.addUser(user);
        return "signin";
    }
    @RequestMapping("/")
    public String signIn(Model model){
        return "signin";
    }
    @RequestMapping(value = "handlesignin",method = RequestMethod.POST)
    public String handleSignIn(@ModelAttribute("user") User user,Model model){
        String username=user.getUsername();
        String password=user.getPassword();
        String tmp=userService.getPassword(user,username);
        if(tmp.equals(password)){
            model.addAttribute("username",username);
            return "home";
        }
        else {
            return "signin";
        }
    }
    @RequestMapping(value = "/problem",method = RequestMethod.POST)
    public String problem(Model model){
        return "problem";
    }
    @RequestMapping(value = "/allvowels",method = RequestMethod.POST)
    public String allvowels(Model model){
        return "allvowels";
    }
    @RequestMapping(value = "/savepatients",method = RequestMethod.POST)
    public String savepatients(Model model){
        return "savepatients";
    }
}
