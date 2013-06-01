<%-- 
    Document   : index
    Created on : May 14, 2013, 11:15:31 PM
    Author     : drgeek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usługa osobowa</title>
    </head>
    <body>
        <h1>Usługa osobowa</h1>

        <h2>Dodaj</h2>
        <form action="webresources/osoby/dodaj" method="post">
            <p>
                PESEL: <input type="text" name="pesel" />
                Imie: <input type="text" name="imie" />
                Nazwisko: <input type="text" name="nazwisko" />
                Data urodzenia: <input type="text" name="data_ur" />
                Płeć: <select  name="plec" >
                    <option>Kobieta</option>
                    <option>Mężczyzna</option>
                </select> 
                Adres: <input type="text" name="adres" />
            </p>
            <input type="submit" value="Dodaj osobę1" />
        </form>

        <h2>Modyfikuj</h2>
        <form action="webresources/osoby/modyfikuj" method="POST">
            <p>
                PESEL: <input type="text" name="pesel" />
                Imie: <input type="text" name="imie" />
                Nazwisko: <input type="text" name="nazwisko" />
                Data urodzenia: <input type="text" name="data_ur" />
                Płeć: <select  name="plec" >
                    <option>Kobieta</option>
                    <option>Mężczyzna</option>
                </select> 
                Adres: <input type="text" name="adres" />
            </p>
            <input type="submit" value="Modyfikuj" />
        </form>

        <h2>Usuń osobę</h2>
        <form action="webresources/osoby/usun" method="GET">
            <p>
                PESEL :<input type="text" name="pesel" />
            </p>
            <input type="submit" value="Usuń osobę" />
        </form>

        <h2>Pobierz osobę</h2>
        <form action="webresources/osoby/pobierz" method="GET">
            <p>
                PESEL :<input type="text" name="pesel" />
            </p>
            <input type="submit" value="Pobierz osobę" />
        </form>
        <a href="webresources/osoby/pokaz">Pokaż osoby</a>
    </body>
</html>
