package SpringMVC.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

@Controller
@RequestMapping("/first")
public class HomeController {
    @RequestMapping(value = "/home",method = RequestMethod.GET)
    public String home(Model model){
        System.out.println("this is home");
        model.addAttribute("name","Rintu Kumar Yadav");
        model.addAttribute("id",6132);
        List<String> friends=new ArrayList<String>();
        friends.add("Prashant Kumar");
        friends.add("Niraj Kumar");
        friends.add("Prashant Chandra");
        model.addAttribute("f",friends);
        return "index";
    }
    @RequestMapping("/about")
    public ModelAndView about(){
        System.out.println("this is about");
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("name","Prashant Kumar");
        modelAndView.addObject("id",1101);
        modelAndView.setViewName("about");
        return modelAndView;
    }
    @RequestMapping("/service")
    public ModelAndView service(){
        System.out.println("this is service");
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("name","Niraj Kumar");
        modelAndView.addObject("id",1085);
        List<String> friends=new ArrayList<String>();
        friends.add("Prashant Kumar");
        friends.add("Niraj Kumar");
        friends.add("Prashant Chandra");
        modelAndView.addObject("f",friends);
        modelAndView.setViewName("service");
        return modelAndView;
    }
}