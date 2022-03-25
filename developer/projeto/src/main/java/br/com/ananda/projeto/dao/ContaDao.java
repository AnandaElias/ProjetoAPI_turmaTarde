package br.com.ananda.projeto.dao;

import org.springframework.data.repository.CrudRepository;
import br.com.ananda.projeto.model.Conta;

public interface ContaDao extends CrudRepository<Conta,Integer> {

}
