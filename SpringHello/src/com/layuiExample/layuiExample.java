package com.layuiExample;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class layuiExample {

    @RequestMapping("/layui")
    public String layuiExample() {
        //System.out.println("id="+id);
        return "layuiExample";
    }
}
