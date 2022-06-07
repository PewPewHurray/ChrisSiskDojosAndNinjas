package com.codingdojo.dojosandninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.dojosandninjas.models.Dojo;
import com.codingdojo.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {
	private final DojoRepository dojoRepository;
	
	public DojoService(DojoRepository dojoRepository) {
		this.dojoRepository = dojoRepository;
	}
	
	public List<Dojo> findAll(){
		return dojoRepository.findAll();
	}
	
	public Dojo findById(Long id) {
		return dojoRepository.findById(id).orElse(null);
	}
	
	public Dojo create(Dojo d) {
		return dojoRepository.save(d);
	}
}
