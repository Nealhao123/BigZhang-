package com.springhello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloController {

    @RequestMapping("/hello")
    public String printHello() {
        //System.out.println("id="+id);
        return "hello";
    }
}
