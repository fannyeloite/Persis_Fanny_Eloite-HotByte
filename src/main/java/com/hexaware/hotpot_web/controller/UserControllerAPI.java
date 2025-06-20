package com.hexaware.hotpot_web.controller;


import com.hexaware.hotpot_web.entity.user;
import com.hexaware.hotpot_web.entity.userRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class UserControllerAPI {

@Autowired
private userRepo userRepo;

@PostMapping("/api/users")
public ResponseEntity<user> addUser(@RequestBody user u) {
    userRepo.save(u);
    return new ResponseEntity<>(u, HttpStatus.CREATED);
}

@GetMapping("/api/users")
public ResponseEntity<List<user>> getUsers() {
    return new ResponseEntity<>(userRepo.findAll(), HttpStatus.OK);
}

@GetMapping("/api/users/{email}")
public ResponseEntity<user> getUser(@PathVariable String email) {
    Optional<user> opt = userRepo.findById(email);
    return opt.map(u -> new ResponseEntity<>(u, HttpStatus.OK))
              .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
}

@PutMapping("/api/users/{email}")
public ResponseEntity<user> updateUser(@PathVariable String email, @RequestBody user u) {
    Optional<user> opt = userRepo.findById(email);
    if (opt.isPresent()) {
        u.setEmail(email);
        userRepo.save(u);
        return new ResponseEntity<>(u, HttpStatus.OK);
    } else {
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}

@DeleteMapping("/api/users/{email}")
public ResponseEntity<user> deleteUser(@PathVariable String email) {
    Optional<user> opt = userRepo.findById(email);
    if (opt.isPresent()) {
        userRepo.deleteById(email);
        return new ResponseEntity<>(opt.get(), HttpStatus.OK);
    } else {
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}
}