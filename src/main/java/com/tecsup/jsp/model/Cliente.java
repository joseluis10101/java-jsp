package com.tecsup.jsp.model;

public class Cliente {

    private String codigo;
    private String nombres;
    private String apellidos;

    public Cliente(String codigo, String nombres, String apellidos) {
        this.codigo = codigo;
        this.nombres = nombres;
        this.apellidos = apellidos;
    }

    public String getNombreCompleto() {
        return this.nombres + " " + this.apellidos;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

}
