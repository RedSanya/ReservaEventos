<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html" encoding="UTF-8"/>
   
   <xsl:template match="/">
      <html>
         <head>
            <title>Eventos y Reservas</title>
            <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
         </head>
         <body>
            <header>             
               <img src="../img/logotipo.png" alt="Reservas" />
               <a href="teatro.xml">Teatro</a>
               <a href="restaurantes.xml">Restaurante</a>
               <a href="festival.xml">Festival</a>
            </header>
            <main>
               <section class="festival">
                  <h1>FESTIVALES DE ROCK</h1>
                  <table>
                     <tr>
                        <th>FESTIVAL</th>
                        <th>CONCIERTO</th>
                        <th>FECHA</th>
                        <th>HORA</th>
                        <th>LUGAR</th>
                     </tr>
                     <xsl:apply-templates select="festivales/festival/conciertos/concierto[grupo/@tipomusica='rock']"/>
                  </table>
               </section>
            </main>
            
            <footer>
               <address>&#169; Desarrollado por info@birt.eus</address>
            </footer>
         </body>
      </html>
      <!-- <html>
           <body> -->
      <!-- <section id="festival"> -->
      
      <!-- </section> -->
      <!-- </body>
           </html> -->
     </xsl:template>
   
   <xsl:template match="concierto">
      <tr>
         <td><xsl:value-of select="../../nombrefesti"/></td>
         <td><xsl:value-of select="grupo"/></td>
         <td><xsl:value-of select="fecha"/></td>
         <td><xsl:value-of select="hora"/></td>
         <td><xsl:value-of select="../../lugar"/></td>
      </tr>
   </xsl:template>
</xsl:stylesheet>