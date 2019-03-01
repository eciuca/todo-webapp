package com.github.eciuca.todo.repositories;

import com.github.eciuca.todo.model.Todo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TodoRepository extends JpaRepository<Todo, Long> {
}
