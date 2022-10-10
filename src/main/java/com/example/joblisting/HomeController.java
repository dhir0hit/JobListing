package com.example.joblisting;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping
    public String Index() {
        return "index";
    }

    @GetMapping("user")
    public String User() {
        return "user";
    }

    @GetMapping("business")
    public String Business(){
        return "business";
    }

    @GetMapping("job")
    public String Job(){
        return "job";
    }
}
