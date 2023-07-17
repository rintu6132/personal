package SpringMVC.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import SpringMVC.Model.User;
import SpringMVC.Service.UserService;

@Controller
public class FormController {
    @Autowired
    private UserService userService;
    @ModelAttribute
    public void commonDataForModel(Model model){
        model.addAttribute("head","Registration Form");
        model.addAttribute("desc","Hello! Welcome to Amadeus.");
    }
    @RequestMapping("/form")
    public String showForm(Model model){
//        model.addAttribute("head","Registration Form");
//        model.addAttribute("desc","Hello! Welcome to Amadeus.");
        return "form";
    }
    @RequestMapping(value = "/processform",method = RequestMethod.POST)
    public String handleForm(@ModelAttribute("user") User user, Model model)
    {
        if(user.getEmail().isBlank()){
            return "redirect:/form";
        }
//        model.addAttribute("head","Registration Form");
//        model.addAttribute("desc","Hello! Welcome to Amadeus.");
        System.out.println(user);
        this.userService.createUser(user);
        return "success";
    }

//    @RequestMapping(value = "/processform",method = RequestMethod.POST)
//    public String handleForm(@RequestParam("email") String userEmail,
//                             @RequestParam("password") String userPassword, Model model)
//    {
//        User user=new User();
//        user.setEmail(userEmail);
//        user.setPassword(userPassword);
//        System.out.println(user);
//        model.addAttribute("user",user);
//        return "success";
//    }

//    @RequestMapping(value = "/processform",method = RequestMethod.POST)
//    public String handleForm(@RequestParam("email") String userEmail,
//                             @RequestParam("password") String userPassword, Model model)
//    {
//        System.out.println(userEmail);
//        System.out.println(userPassword);
//        model.addAttribute("email",userEmail);
//        model.addAttribute("password",userPassword);
//        return "success";
//    }
}
