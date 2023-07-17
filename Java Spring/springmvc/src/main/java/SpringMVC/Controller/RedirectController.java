package SpringMVC.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class RedirectController {
//    @RequestMapping("/first")
//    public String first(){
//        System.out.println("this is first handler");
//        return "redirect:/second";
//    }
@RequestMapping("/first")
public RedirectView first(){
    System.out.println("this is first handler");
    RedirectView redirectView=new RedirectView();
    redirectView.setUrl("second");
//    redirectView.setUrl("https://www.google.com");
    return redirectView;
}
    @RequestMapping("/second")
    public String second(){
        System.out.println("this is second handler");
        return "";
    }
}
