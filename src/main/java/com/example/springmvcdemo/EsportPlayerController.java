package com.example.springmvcdemo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/player")
public class EsportPlayerController {

    // method to show form
    @RequestMapping("showForm")
    public String showForm(Model theModel) {

        // create a new student
        EsportPlayer player = new EsportPlayer();
        // add student to the model
        theModel.addAttribute("player", player);
        return "player-form";
    }

    @RequestMapping("/processForm")
    public String processForm(@ModelAttribute("player") EsportPlayer thePlayer) {

        // log the input data
        System.out.println("The PLayer " + thePlayer.getFirstName() + " " + thePlayer.getLastName());
        return "student-confirmation";
    }


}
