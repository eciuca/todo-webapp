package com.github.eciuca.todo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Arrays;
import java.util.List;

@Controller
public class TodoController {

    private final List<String> todos = Arrays.asList("todo 1", "todo 2", "todo 3");


    @RequestMapping(value = {"/todos", "/index"}, method = RequestMethod.GET)
    public String showTodos(Model model) {
        model.addAttribute("todos", todos);

        return "todos";
    }
}
