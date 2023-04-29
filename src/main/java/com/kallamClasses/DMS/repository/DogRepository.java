package com.kallamClasses.DMS.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.kallamClasses.DMS.models.Dog;

public interface DogRepository extends CrudRepository<Dog, Integer> {
	List<Dog> findByName(String name);
}
