<%-- 
    Document   : cargarOcupados
    Created on : 19/03/2020, 09:29:07 AM
    Author     : JuanCamilo
--%>

<%@page import="Parqueadero.entidades.Bahia"%>
<%@page import="Parqueadero.entidades.BahiaBD"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%List<BahiaBD> bahias = (List<BahiaBD>) request.getAttribute("bahias");%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <Meta http-equiv="REFRESH" CONTENT="3;URL=http://localhost:8080/ParqueaderoWeb/BahiasServlet?accion=listar"> 
        <style>
            #lienzo{
                background-color: rgb(186, 192, 197);
                
            }            
            section{
                width: 500;
                position: relative;
                margin: auto;
            }
        </style>


    </head>
    <body>
        <div style="text-align:center">
        <canvas id = lienzo width="700" height="610" style="border: 1px solid #000000"></canvas>
        </div>
        <script>
            var lienzo = document.querySelector("canvas");

            var titulo = lienzo.getContext("2d");
            titulo.font = "20px Consolas";
            titulo.fillStyle = "black";
            titulo.fillText("PARQUEADERO UNICAUCA",260,25);
            
            var estado = lienzo.getContext("2d");
            estado.font = "18px Consolas";
            estado.fillStyle = "black";

            estado.fillText("Ocupado ",230,45);
            estado.fillText("Libre ",430,45);

            var est = lienzo.getContext("2d");
            
            est.fillStyle = "lime";
            est.fillRect(310,30,20,20);
            
            est.fillStyle = "white";
            est.fillRect(490,30,20,20);
       
            var estructura = lienzo.getContext("2d");
            estructura.fillStyle = "salmon";

            estructura.fillRect(440,250,90,250);//laboratorios
            estructura.fillRect(270,180,190,60);//ipet
            estructura.fillRect(180,200,85,302);//fiet

            var txt = lienzo.getContext("2d");
            txt.font = "20px Consolas";
            txt.fillStyle = "black";

            txt.fillText("FIET",200,220);          
            txt.fillText("IPET",340,210);
            txt.fillText("LABS",465,360);

            var zona = lienzo.getContext("2d");
            zona.fillStyle = "gray";

            zona.fillRect(40,100,130,320);//fiet
            zona.fillRect(40,430,130,120);//fic
            zona.fillRect(465,135,170,90);//ipet
            zona.fillRect(540,235,130,300);//motos

                            
        </script>

        <ul>
            <script>
                var puesto = lienzo.getContext("2d");
                
            </script>   
            <%for (BahiaBD bahia : bahias) {%>

            <%if(bahia.getBaid() == 1){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(60,115,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(60,115,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 2){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(95,115,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(95,115,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 3){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(130,115,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(130,115,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 4){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(60,180,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(60,180,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 5){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(95,180,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(95,180,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 6){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(130,180,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(130,180,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 7){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(60,250,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(60,250,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 8){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(95,250,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(95,250,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 9){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(130,250,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(130,250,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 10){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(60,315,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(60,315,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 11){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(95,315,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(95,315,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 12){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(130,315,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(130,315,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 13){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(60,380,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(60,380,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 14){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(95,380,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(95,380,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 15){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(130,380,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(130,380,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 16){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(60,440,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(60,440,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 17){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(95,440,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(95,440,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 18){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(130,440,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(130,440,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 19){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(60,477,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(60,477,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 20){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(95,477,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(95,477,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 21){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(130,477,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(130,477,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 22){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(60,515,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(60,515,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 23){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(95,515,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(95,515,20,20);
                    </script>
                <%}%>
            <%}%>
            
            <%if(bahia.getBaid() == 24){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(130,515,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(130,515,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 25){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(490,150,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(490,150,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 26){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(540,150,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(540,150,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 27){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(590,150,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(590,150,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 28){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(490,180,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(490,180,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 29){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(540,180,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(540,180,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 30){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(590,180,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(590,180,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 31){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(570,260,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(570,260,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 32){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(620,260,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(620,260,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 33){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(570,310,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(570,310,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 34){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(620,310,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(620,310,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 35){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(570,360,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(570,360,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 36){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(620,360,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(620,360,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 37){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(570,410,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(570,410,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 38){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(620,410,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(620,410,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 39){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(570,460,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(570,460,20,20);
                    </script>
                <%}%>
            <%}%>

            <%if(bahia.getBaid() == 40){%>
                <%if(bahia.getBaestado().equals("Libre")){%>
                    <script>
                        puesto.fillStyle = "white";
                        puesto.fillRect(620,460,20,20);
                    </script>
                <%}else{%>
                    <script>
                        puesto.fillStyle = "lime";
                        puesto.fillRect(620,460,20,20);
                    </script>
                <%}%>
            <%}%>


            <%}%>
            
            
        </ul>
    </body>
</html>
