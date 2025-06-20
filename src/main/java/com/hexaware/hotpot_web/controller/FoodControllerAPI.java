
package com.hexaware.hotpot_web.controller;

import com.hexaware.hotpot_web.entity.Food;
import com.hexaware.hotpot_web.entity.FoodRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class FoodControllerAPI {


@Autowired
private FoodRepo foodRepo;

@PostMapping("/api/foods")
public ResponseEntity<Food> addFood(@RequestBody Food food) {
    foodRepo.save(food);
    return new ResponseEntity<>(food, HttpStatus.CREATED);
}

@GetMapping("/api/foods")
public ResponseEntity<List<Food>> getFoods() {
    return new ResponseEntity<>(foodRepo.findAll(), HttpStatus.OK);
}

@GetMapping("/api/foods/{id}")
public ResponseEntity<Food> getFood(@PathVariable int id) {
    Optional<Food> opt = foodRepo.findById(id);
    return opt.map(food -> new ResponseEntity<>(food, HttpStatus.OK))
              .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
}

@PutMapping("/api/foods/{id}")
public ResponseEntity<Food> updateFood(@PathVariable int id, @RequestBody Food food) {
    Optional<Food> opt = foodRepo.findById(id);
    if (opt.isPresent()) {
        food.setFoodId(id);
        foodRepo.save(food);
        return new ResponseEntity<>(food, HttpStatus.OK);
    } else {
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}

@DeleteMapping("/api/foods/{id}")
public ResponseEntity<Food> deleteFood(@PathVariable int id) {
    Optional<Food> opt = foodRepo.findById(id);
    if (opt.isPresent()) {
        foodRepo.deleteById(id);
        return new ResponseEntity<>(opt.get(), HttpStatus.OK);
    } else {
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}
}