<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html" encoding="UTF-8"/>
   <xsl:param name="nombreRestaurante" select="'El clarete'"/>
   
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
               <section id="restaurante">
                  <xsl:variable name="link">
                     <xsl:value-of select="restaurantes/restaurante[nombrerestaurante=$nombreRestaurante]/informacion"/>
                  </xsl:variable>
                  <h1>
                     <a href="{ $link }">
                        <xsl:value-of select="$nombreRestaurante"/>
                     </a> - 
                     <xsl:value-of select="restaurantes/restaurante[nombrerestaurante=$nombreRestaurante]/ciudad"/>
                  </h1>
                  <div>
                     <xsl:for-each select="restaurantes/restaurante[nombrerestaurante=$nombreRestaurante]/menu">
                        <article class="restaurante">
                           <h3><xsl:value-of select="@tipo"/></h3>
                           <xsl:for-each select="plato">
                              <p><xsl:value-of select="."/></p>
                           </xsl:for-each>
                        </article>
                     </xsl:for-each>
                  </div>
               </section>
            </main>
            
            <footer>
               <address>&#169; Desarrollado por info@birt.eus</address>
            </footer>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>