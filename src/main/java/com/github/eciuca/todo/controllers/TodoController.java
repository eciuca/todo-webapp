package com.github.eciuca.todo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
public class TodoController {

    private final List<String> todos;

    public TodoController() {
        todos = new ArrayList<>();
        todos.add("todo 1");
        todos.add("todo 2");
        todos.add("todo 3");
    }


    @RequestMapping(value = {"/todos", "/index"}, method = RequestMethod.GET)
    public String showTodos(Model model) {
        model.addAttribute("todos", todos);

        return "todos";
    }

    @RequestMapping(value = {"/todos/{id}/delete"}, method = RequestMethod.GET)
    public String deleteTodo(@PathVariable int id) {
        todos.remove(id);

        return "redirect:/todos.html";
    }
}
