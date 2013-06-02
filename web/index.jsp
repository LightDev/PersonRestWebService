<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usługa osobowa</title>
        <link href="css/StyleSheet1.css" rel="stylesheet" type="text/css">
        <link href="css/admin.css" rel="stylesheet" type="text/css">
        <!--<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>-->
    </head>
    <body>
        <!--<div id="page" style="background: #fff;">-->
        <div id="page" >
            <a href="index.jsp" style="float: right; text-decoration: none;padding-bottom: 7px;">Moduł użytkownika</a>
            <div id="header">
                <h1 class="h2_decoration ">Usługa osobowa</h1>
            </div>
            <div id="pageInside" >
                <!--                <div id="MENU">
                                    <ul>
                                        <li><a href="admin_panel.php" style="">PANEL ADMINISTRACYJNY</a></li>
                                        <li class="set"><a href="adminIndex.jsp" class="set" >Zarządzaj instancjami</a></li>
                                        <li><a href="buildClassifier" >Budowa klasyfikatora</a></li>
                                        <li><a href="evaluateClassifier.jsp" >Ewaluacja klasyfikatora</a></li>
                                        <li><a href="Stats" >Statystyki</a></li>
                
                                                <li><a href=".php" ></a></li>
                                                <li><a href=".php" ></a></li>
                                    </ul>
                                </div>
                                <div id="TRESC">-->
                <div class="wrap">
                    <h1 class="h2_decoration underline">Dodaj</h1><br />
                    <form action="webresources/osoby/dodaj" method="POST">
                        <table id="table-6">
                            <thead>
                            <th>Atrybut</th><th>Wartość</th>
                            </thead>
                            <tbody>        
                                <tr><td>PESEL:</td><td><input type="text" name="pesel" /></td></tr>
                                <tr><td>Imie:</td><td><input type="text" name="imie" /></td></tr>
                                <tr><td>Nazwisko:</td><td><input type="text" name="nazwisko" /></td></tr>
                                <tr><td>Data urodzenia: </td><td><input type="text" name="data_ur" /></td></tr>
                                <tr><td>Płeć: </td><td><select  name="plec" >
                                            <option>Kobieta</option>
                                            <option>Mężczyzna</option>
                                        </select> </td></tr>
                                <tr><td>Adres:</td><td><input type="text" name="adres" /></td></tr>
                            </tbody>
                        </table>
                        <br />
                        <input type="submit" value="Dodaj osobę" />
                    </form>

                    <h1 class="h2_decoration underline">Modyfikuj</h1><br />
                    <form action="webresources/osoby/modyfikuj" method="POST">
                        <p>
                            PESEL :<input type="text" name="pesel" />
                        </p>
                        <input type="submit" value="Modyfikuj" />
                    </form>

                    <h1 class="h2_decoration underline">Usuń</h1><br />
                    <form action="webresources/osoby/usun" method="GET">
                        <p>
                            PESEL :<input type="text" name="pesel" />
                        </p>
                        <input type="submit" value="Usuń osobę" />
                    </form>

                    <h1 class="h2_decoration underline">Pobierz</h1><br />
                    <form action="webresources/osoby/pobierz" method="GET">
                        <p>
                            PESEL :<input type="text" name="pesel" />
                        </p>
                        <input type="submit" value="Pobierz osobę" />
                    </form>
                    <a href="webresources/osoby/pokaz">Pokaż osoby</a>

                    <!--                        <table id="table-6">
                                                <thead>
                                                <th>Atrybut</th><th>Wartość</th>
                                                </thead>
                                                <tbody>        
                                                    <tr><td>parents</td><td>${parents}</td></tr>
                                                    <tr><td>has_nurs</td><td>${has_nurs}</td></tr>
                                                    <tr><td>form</td><td>${form}</td></tr>
                                                    <tr><td>children</td><td>${children}</td></tr>
                                                    <tr><td>housing</td><td>${housing}</td></tr>
                                                    <tr><td>finance</td><td>${finance}</td></tr>
                                                    <tr><td>social</td><td>${social}</td></tr>
                                                    <tr><td>health</td><td>${health}</td></tr>
                                                    <tr><td>class</td><td>${class}</td></tr>
                                                </tbody>
                                            </table>
                                            <br />
                                            <a href="adminIndex.jsp">Wróć do zarządania instancjami</a>-->
                    <!--</div>-->
                </div>
            </div>
            <div id="footer">Autor: Paweł Parafiniuk</div>
        </div>
    </body>
</html>

