package com.example.springmvcdemo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {


    // need a controller method to show the initial form
    @RequestMapping("/showForm")
    public String showForm() {
        return "helloworld-form";
    }
    // need a controller to process the HTML form
    @RequestMapping("/processForm")
    public String processForm() {
        return "helloworld";
    }

    // new controller method to read form data
    // and add data to model
    @RequestMapping("/processFormTwo")
    public String letsShoutDude(HttpServletRequest request, Model model) {

        // read the request from the HTML form
        String message = request.getParameter("studentName");

        // convert to all caps
        message = message.toUpperCase(Locale.ROOT);
        // create the message
        String result = "Yo! " + message;
        // add message to the model
        model.addAttribute("message", result);

        return "helloworld";
    }
    @RequestMapping("/processFormThree")
    public String processFormVersionThree(@RequestParam("studentName") String message, Model model) {

        // read the request from the HTML form
//        String message = request.getParameter("studentName");

        // convert to all caps
        message = message.toUpperCase(Locale.ROOT);
        // create the message
        String result = "I LOVE YOU >> " + message;
        // add message to the model
        model.addAttribute("message", result);

        return "helloworld";
    }

}
