package com.hexaware.hotpot_web.controller;

import com.hexaware.hotpot_web.entity.Category;
import com.hexaware.hotpot_web.entity.CategoryRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class CategoryControllerAPI {


@Autowired
private CategoryRepo categoryRepo;

// POST - Add new category
@PostMapping("/api/categories")
public ResponseEntity<Category> addCategory(@RequestBody Category category) {
    categoryRepo.save(category);
    return new ResponseEntity<>(category, HttpStatus.CREATED);
}

// GET - Fetch all categories
@GetMapping("/api/categories")
public ResponseEntity<List<Category>> getAllCategories() {
    return new ResponseEntity<>(categoryRepo.findAll(), HttpStatus.OK);
}

// GET - Get a single category by ID
@GetMapping("/api/categories/{id}")
public ResponseEntity<Category> getCategoryById(@PathVariable int id) {
    Optional<Category> category = categoryRepo.findById(id);
    return category.map(value -> new ResponseEntity<>(value, HttpStatus.OK))
                   .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
}

// PUT - Update category by ID
@PutMapping("/api/categories/{id}")
public ResponseEntity<Category> updateCategory(@PathVariable int id, @RequestBody Category updatedCategory) {
    Optional<Category> category = categoryRepo.findById(id);
    if (category.isPresent()) {
        updatedCategory.setCategoryId(id);
        categoryRepo.save(updatedCategory);
        return new ResponseEntity<>(updatedCategory, HttpStatus.OK);
    } else {
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}

// DELETE - Delete category by ID
@DeleteMapping("/api/categories/{id}")
public ResponseEntity<Category> deleteCategory(@PathVariable int id) {
    Optional<Category> category = categoryRepo.findById(id);
    if (category.isPresent()) {
        categoryRepo.deleteById(id);
        return new ResponseEntity<>(category.get(), HttpStatus.OK);
    } else {
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}
}
