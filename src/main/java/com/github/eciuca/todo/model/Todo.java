package com.github.eciuca.todo.model;


import javax.persistence.*;

@Entity
@Table(name = "TODOS")
public class Todo {

    @Id
    @GeneratedValue
    private long id;

    @Column
    private String name;

    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
