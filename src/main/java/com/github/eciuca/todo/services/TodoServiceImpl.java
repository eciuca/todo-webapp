package com.github.eciuca.todo.services;

import com.github.eciuca.todo.model.Todo;
import com.github.eciuca.todo.repositories.TodoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Random;

@Service
public class TodoServiceImpl implements TodoService {

    @Autowired
    private TodoRepository repository;

    @Override
    public List<Todo> getAllTodos() {
        return repository.findAll();
    }

    @Override
    public void deleteTodo(long id) {
        repository.delete(id);
    }

    @Override
    public Todo createNewTodo() {
        Todo todo = new Todo();
        todo.setName("todo " + new Random().nextInt());

        return repository.save(todo);
    }
}
