package org.netbeans.rest.application.config;

import java.util.ArrayList;
import javax.sound.midi.Track;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Consumes;
import javax.ws.rs.Path;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 * REST Web Service
 *
 * @author drgeek
 */
@Path("/osoby")
public class Person_serviceResource {

    @Context
    private UriInfo context;
    public ArrayList osoby = new ArrayList<Osoba>();

    public Person_serviceResource() {
        osoby.add(new Osoba("123", "Paweł", "Parafiniuk", "12 maja 2343", true, "Towarowa 1"));
        osoby.add(new Osoba("111", "Mehdi", "Blablabla", "12 maja 2343", true, "Storczykowa 21"));
        osoby.add(new Osoba("222", "Anna", "Rudecka", "19 wrze 2343", false, "Konwaliowa 1"));
        osoby.add(new Osoba("333", "Misiek", "Misiecki", "21 maja 2343", true, "Lodowa 13"));
    }

    @GET
    @Path("dodaj")
    @Consumes("application/json")
    @Produces("text/plain")
    public String dodaj(Osoba os) {
        //os = new 
        osoby.add(os);
        String msg = "Dodalem osobe";
        return msg;
    }

    @POST
    @Path("modyfikuj")
    @Consumes("application/json")
    @Produces("text/plain")
    public String modyfikuj(Osoba os) {
        //osoby.add(os);
        String msg = "zmodyfikowalem osobe";
        return msg;
    }

    @GET
    //@Path("/usun/{pesel}")
    @Path("usun")
    @Produces("text/html")
    public String usun(@QueryParam("pesel") String pesel) {
        int i;
        for (i = 0; i < osoby.size(); ++i) {
            String os_pesel = ((Osoba) osoby.get(i)).getPesel();
            if (os_pesel.equals(pesel)) {
                osoby.remove(i);

            }
        }
        String extramsg = pokaz();

        String msg = "Usunalem osobe " + pesel + "<br>" + extramsg;
        return msg;
    }

    @GET
    @Path("pobierz")
    @Produces("application/json")
    public Osoba pobierz(@QueryParam("pesel") String pesel) {
        int i;
        Osoba os = null;
        for (i = 0; i < osoby.size(); ++i) {
            String os_pesel = ((Osoba) osoby.get(i)).getPesel();
            if (os_pesel.equals(pesel)) {
                os = ((Osoba) osoby.get(i));
            }
        }
        return os;
    }

//    @POST
//    @Path("post")
//    @Consumes(MediaType.APPLICATION_JSON)
//    public Response createOsobaInJSON(Osoba o) {
//
//        String result = "Osoba zapisana: " + o;
//        return Response.status(201).entity(result).build();
//
//    }
//
//    @GET
//    @Path("get")
//    @Produces(MediaType.APPLICATION_JSON)
//    public Osoba getOsobaInJSON() {
//
//        Osoba o = new Osoba();
//        o.setPesel("90098974");
//        //o.setSinger("Metallica");
//        return o;
//    }
//
    public String pokaz1() {
        String s = "";
        if (osoby.isEmpty()) {
            s = "Brak osob w bazie";
        } else {
            int i;
            for (i = 0; i < osoby.size(); ++i) {
                s += osoby.get(i).toString() + "<br>";
            }
        }
        return s;
    }

    @GET
    @Path("pokaz")
    @Produces("text/html")
    public String pokaz() {
        String s;
        //Response.ok
        return s = pokaz1();
    }
//    @GET
//    @Produces("application/json")
//    public Osoba getXml() {
//        Osoba p = new Osoba("234", "Paweł", "Parafiniuk", "asda", true, "Towarowa");
//        return p;
//    }
//
//    @PUT
//    @Consumes("application/json")
//    public void putJson(String content) {
//    }
}