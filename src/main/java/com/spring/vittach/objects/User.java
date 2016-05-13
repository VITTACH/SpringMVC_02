package com.spring.vittach.objects;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "appuser")
public class User {
    @Id
    @GeneratedValue

    private long id;

    private String name;
    private String message;
    private String password;
    private String input_qiw;
    private String input_log;
    private String input_mal;
    private String input_pas;
    private String input_rep;

    public User() {
        message = "";
        input_qiw = "";
        input_log = "";
        input_mal = "";
        input_pas = "";
        input_rep = "";
    }

    public User(String name, String message,
                String input_qiw, String input_log,
                String input_mal, String input_pas,
                String input_rep, String password) {
        this.name = name;
        this.message = message;
        this.password = password;
        this.input_qiw = input_qiw;
        this.input_log = input_log;
        this.input_mal = input_mal;
        this.input_pas = input_pas;
        this.input_rep = input_rep;
    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public String getPassword() {
        return password;
    }

    public String getInput_mal() {

        return input_mal;
    }

    public String getInput_qiw() {
        return input_qiw;
    }

    public String getInput_log() {
        return input_log;
    }

    public String getInput_rep() {
        return input_rep;
    }

    public String getInput_pas() {
        return input_pas;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setInput_rep(String input_rep) {
        this.input_rep = input_rep;
    }

    public void setInput_pas(String input_pas) {
        this.input_pas = input_pas;
    }

    public void setInput_log(String input_log) {
        this.input_log = input_log;
    }

    public void setInput_qiw(String input_qiw) {
        this.input_qiw = input_qiw;
    }

    public void setInput_mal(String input_mal) {
        this.input_mal = input_mal;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
