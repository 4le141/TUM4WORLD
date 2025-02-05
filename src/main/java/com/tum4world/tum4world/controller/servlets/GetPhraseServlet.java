package com.tum4world.tum4world.controller.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

@WebServlet(name = "GetPhraseServlet", value = "/getphrase")
public class GetPhraseServlet extends HttpServlet {

    private List<String> phraseList;
    private Random ran = new Random();

    @Override
    public void init() throws ServletException {
        super.init();
        phraseList = new ArrayList<>();
        phraseList.addAll(Arrays.asList(
                "Amare e sentirsi amati: il rapporto con gli animali spesso può essere più forte di quello con le persone",
                "Adottare un cucciolo è una possibilità che ci viene data per far del bene al nostro pianeta, inizia anche te a fare la differenza!",
                "Salvare la vita ad un animale significa migliorare non solo la sua ma soprattutto la propria",
                "L'amore di una persona verso il proprio animale può soltanto significare che si proteggono e si confortano l'un l'altro",
                "Per vivere pienamente la gioia dobbiamo avere un piccolo amico a quattro zampe"
        ));

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/plain");
        response.setCharacterEncoding("ISO-8859-1");
        response.getOutputStream().println(phraseList.get(ran.nextInt(phraseList.size())));
    }
}
