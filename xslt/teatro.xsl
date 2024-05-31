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
            <main class="principal">
               <section class="teatro">
                  <h1>PRÓXIMAS OBRAS DE TEATRO</h1>
                  <ul>
                     <xsl:for-each select="teatros/teatro[starts-with(fechahora/@dia, '2023-01')]">
                        <xsl:sort select="fechahora/@dia" order="descending"/>
                        <li>
                           <xsl:choose>
                              <xsl:when test="precio &lt; 20">
                                 <span class="subrayado">
                                    <xsl:value-of select="concat(fechahora/@dia, ': ', obra)"/>
                                 </span>
                              </xsl:when>
                              <xsl:otherwise>
                                 <xsl:value-of select="concat(fechahora/@dia, ': ', obra)"/>
                              </xsl:otherwise>
                           </xsl:choose>
                        </li>
                     </xsl:for-each>
                  </ul>
               </section>
            </main>
            
            <footer>
               <address>&#169; Desarrollado por info@birt.eus</address>
            </footer>
         </body>
      </html>
      
   </xsl:template>
</xsl:stylesheet>