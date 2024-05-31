<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html" encoding="UTF-8"/>
   <xsl:param name="nombreRestaurante" select="'El clarete'"/>
   
   <!-- Plantilla principal -->
   <xsl:template match="/">
      <html>
         <head>
            <title>Eventos y Reservas</title>
            <link href="css/estilo.css" rel="stylesheet" type="text/css" />
         </head>
         <body>
            <header>
               <img src="img/logotipo.png" alt="Reservas" />
               <a href="xml/teatro.xml">Teatro</a>
               <a href="xml/restaurantes.xml">Restaurante</a>
               <a href="xml/festival.xml">Festival</a>
            </header>
            
            <main class="principal" style="background-image: url('img/fondo.jpg');">
            </main>
            
            <footer>
               <address>&#169; Desarrollado por info@birt.eus</address>
            </footer>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>