package com.tecsup.jsp.servlet;

import com.tecsup.jsp.model.Cliente;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/buscarcliente"})
public class BuscarClienteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req,
            HttpServletResponse resp) throws ServletException, IOException {

        String filtro = req.getParameter("filtro");
        System.out.println("BUSQUEDA: " + filtro);

        /* 
         Producción: El filtro es enviado al service/dao:
                service.buscarCliente(filtro);
        
         Laboratorio: imaginamos que la siguiente lista es el resultado.
         */
        Cliente carmen = new Cliente("1019", "Carmen", "CC");
        Cliente jose = new Cliente("1020", "José", "EA");
        Cliente jean = new Cliente("1020", "Jean", "EE");
        Cliente alx = new Cliente("1020", "Alx", "CC");

        List<Cliente> clientes = Arrays.asList(alx, carmen, jose, jean);
        
        req.setAttribute("CLIENTES_FILTRADOS", clientes);
        
        RequestDispatcher rq = req.getRequestDispatcher("buscarcliente.jsp");
        rq.forward(req, resp);
    }

}
