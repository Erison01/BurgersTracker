package com.erison.burgertracker.services;

import com.erison.burgertracker.models.Burger;
import com.erison.burgertracker.repositories.BurgerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service

public class BurgerService {
    @Autowired
    private BurgerRepository burgerRepository;

   public List<Burger>allBurgers(){
       return burgerRepository.findAll();
   }
   public void createBurger(Burger burger){
       burgerRepository.save(burger);
   }
    public Burger burger(Long id){
       return burgerRepository.findById(id).orElse(null);
    }
    public void updateBurger(Burger burger){
       burgerRepository.save(burger);
    }
}
