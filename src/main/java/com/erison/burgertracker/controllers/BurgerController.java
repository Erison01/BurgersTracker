package com.erison.burgertracker.controllers;

import com.erison.burgertracker.models.Burger;
import com.erison.burgertracker.services.BurgerService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/")
public class BurgerController {
    @Autowired
    private BurgerService burgerService;

   @GetMapping
    public String home(Model model){
       List<Burger>burgers = burgerService.allBurgers();
       model.addAttribute("burgers",burgers);
       model.addAttribute("newBurger", new Burger());
       return "home";
   }
   @PostMapping
    public String create(@Valid @ModelAttribute("newBurger")Burger newBurger , BindingResult result){
       if (result.hasErrors()){
           return "home";

       }else {
           burgerService.createBurger(newBurger);
           return "redirect:/";
       }
   }
   @GetMapping("/burgers/edit/{id}")
    public String edit(@PathVariable Long id , Model model){
       Burger theBurger = burgerService.burger(id);
       model.addAttribute("theBurger",theBurger);
       return "edit";
   }
   @PutMapping("/update/{id}")
    public String update(@Valid @ModelAttribute("theBurger")Burger theBurger,BindingResult result,@PathVariable Long id){
       if (result.hasErrors()){
           return "edit";
       }else {
        burgerService.updateBurger(theBurger);
        return "redirect:/";
       }
   }
}
