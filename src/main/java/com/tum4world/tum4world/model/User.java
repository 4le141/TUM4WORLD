package com.tum4world.tum4world.model;

public class User{
    public static enum Tipo {
        SIMPATIZZANTE,
        ADERENTE,
        AMMINISTRATORE
    }

    private String username;
    private String password;

    private String name;

    private Tipo tipo;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Tipo getTipo() {
        return tipo;
    }

    public void setTipo(Tipo tipo) {
        this.tipo = tipo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
