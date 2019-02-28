package com.github.eciuca.todo.services;

import com.github.eciuca.todo.model.Todo;

import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class TodoServiceImpl implements TodoService {

    private List<Todo> todos;

    public TodoServiceImpl() {
        todos = IntStream.range(1, 11)
                .mapToObj(this::createTodo)
                .collect(Collectors.toList());
    }

    private Todo createTodo(int i) {
        Todo todo = new Todo();
        todo.setId(new Random().nextInt());
        todo.setName("todo " + i);

        return todo;
    }

    @Override
    public List<Todo> getAllTodos() {
        return todos;
    }

    @Override
    public void deleteTodo(int id) {
        todos.stream()
                .filter(todo -> todo.getId() == id)
                .findFirst()
                .ifPresent(todos::remove);
    }
}
