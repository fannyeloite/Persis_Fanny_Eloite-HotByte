package com.hexaware.hotpot_web.controller;

import java.util.List;
import java.util.Optional;

import com.hexaware.hotpot_web.entity.Delivery;
import com.hexaware.hotpot_web.entity.DeliveryRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/deliveries")
public class DeliveryRestController {

    @Autowired
    private DeliveryRepo repo;

    @PostMapping
    public ResponseEntity<Delivery> addDelivery(@RequestBody Delivery delivery) {
        repo.save(delivery);
        return new ResponseEntity<>(delivery, HttpStatus.CREATED);
    }

    @GetMapping
    public ResponseEntity<List<Delivery>> getAllDeliveries() {
        return new ResponseEntity<>(repo.findAll(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Delivery> getDeliveryById(@PathVariable int id) {
        Optional<Delivery> optional = repo.findById(id);
        if (optional.isPresent()) {
            return new ResponseEntity<>(optional.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<Delivery> updateDelivery(@PathVariable int id, @RequestBody Delivery updatedDelivery) {
        Optional<Delivery> optional = repo.findById(id);
        if (optional.isPresent()) {
            updatedDelivery.setDeliveryId(id);
            repo.save(updatedDelivery);
            return new ResponseEntity<>(updatedDelivery, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteDelivery(@PathVariable int id) {
        Optional<Delivery> optional = repo.findById(id);
        if (optional.isPresent()) {
            repo.deleteById(id);
            return new ResponseEntity<>("Delivery deleted successfully", HttpStatus.OK);
        } else {
            return new ResponseEntity<>("Delivery not found", HttpStatus.NOT_FOUND);
        }
    }
}
