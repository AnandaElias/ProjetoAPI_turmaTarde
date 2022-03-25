package br.com.ananda.projeto.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.ananda.projeto.dao.ContaDao;
import br.com.ananda.projeto.model.Conta;

@RestController
public class ContaController {
	@Autowired
	private ContaDao dao;
	
	@GetMapping("/clientes")
	
	public ArrayList<Conta> recuperarTudo(){
		ArrayList<Conta> lista;
		lista=(ArrayList<Conta>)dao.findAll();
		return lista;
	}

}
