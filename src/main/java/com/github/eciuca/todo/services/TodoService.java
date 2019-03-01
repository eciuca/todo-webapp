package com.github.eciuca.todo.services;

import com.github.eciuca.todo.model.Todo;

import java.util.List;

public interface TodoService {

    List<Todo> getAllTodos();

    void deleteTodo(long id);

    Todo createNewTodo();
}
