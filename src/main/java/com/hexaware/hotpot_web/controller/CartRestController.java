package com.hexaware.hotpot_web.controller;

import java.util.List;
import java.util.Optional;

import com.hexaware.hotpot_web.entity.Cart;
import com.hexaware.hotpot_web.entity.CartRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/cart")
public class CartRestController {

    @Autowired
    private CartRepo repo;

    @PostMapping
    public ResponseEntity<Cart> addCart(@RequestBody Cart cart) {
        repo.save(cart);
        return new ResponseEntity<>(cart, HttpStatus.CREATED);
    }

    @GetMapping
    public ResponseEntity<List<Cart>> getAllCarts() {
        return new ResponseEntity<>(repo.findAll(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Cart> getCartById(@PathVariable int id) {
        Optional<Cart> optional = repo.findById(id);

        if (optional.isPresent()) {
            return new ResponseEntity<>(optional.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<Cart> updateCart(@PathVariable int id, @RequestBody Cart updatedCart) {
        Optional<Cart> optional = repo.findById(id);
        if (optional.isPresent()) {
            updatedCart.setCartId(id);
            repo.save(updatedCart);  
            return new ResponseEntity<>(updatedCart, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteCart(@PathVariable int id) {
        Optional<Cart> optional = repo.findById(id);
        if (optional.isPresent()) {
            repo.deleteById(id);
            return new ResponseEntity<>("Cart deleted successfully", HttpStatus.OK);
        } else {
            return new ResponseEntity<>("Cart not found", HttpStatus.NOT_FOUND);
        }
    }
}
