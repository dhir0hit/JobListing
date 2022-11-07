package com.example.joblisting.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.xml.ws.Service;

@RestController
@RequestMapping("business")
public class BusinessController {

    @GetMapping
    public ModelAndView getBusinessById() {
        ModelAndView modelAndView;
        modelAndView = new ModelAndView("Business/business");

        return modelAndView;
    }
}
