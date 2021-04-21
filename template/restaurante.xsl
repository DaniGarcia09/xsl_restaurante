<?xml version="1.0" encoding="UTF-8"?>
<!--
XSLT Namespace
El espacio de nombre se usa principalmente para identificar elementos que sirven como declaraciones o instrucciones en el lenguaje XSLT. Hemos de incluir el atributo version="1.0".
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--Se crea una plantilla en el documento entero (match="/" define el documento entero)-->
<xsl:template match="/">
<html>
<head>
  <meta charset="utf-8"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
  <link rel="icon" type="image/png" href="img/bandera.png"></link>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css"></link>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"></link>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="css/styles.css"></link>
</head>
<body>
  <header>
    <img class="logo" src="img/logo.png" alt="Error"></img>
  </header>
  <div>
    <img class="imagenFondo" src="img/banner.jpg" alt="Error"></img>
  </div>
  <br></br>
        <br></br>
        <!--ENTRANTES-->
        <div>
            <h1 class="titulos">Entrantes</h1>
            <br></br>
            <table class="tablas">
                <xsl:for-each select="catalog/comida[tipo='Entrante']">
                    <tr>
                        <td><a href="{img}"><xsl:value-of select=" nombre " /></a></td>
                        <td><xsl:value-of select="  Kcal" />  Kcal</td>
                        <td><xsl:value-of select="Ingredientes"/></td>
                        <td><xsl:value-of select="precio"/>€</td>

                    </tr>
                    <!--<tr>
                      <td colspan="4"><img>
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="img"/>
                                    </xsl:attribute>
                                    </img>
                      </td>
                    </tr> -->
                </xsl:for-each>
            </table>
        </div>
        <!--PLATOS-->
        <div>
          <h1 class="titulos">Platos</h1>
            <br></br>
            <table class="tablas">
                <xsl:for-each select="catalog/comida[tipo='Plato']">
                    <tr>
                        <td><a href="{img}"><xsl:value-of select=" nombre " /></a></td>
                        <td><xsl:value-of select="  Kcal" />  Kcal</td>
                        <td><xsl:value-of select="Ingredientes"/></td>
                        <td><xsl:value-of select="precio"/>€</td>
                    </tr>
                </xsl:for-each>
            </table>
        </div>
        <!--PLATOS-->
        <div>
          <h1 class="titulos">Postres</h1>
            <br></br>
            <table class="tablas">
                <xsl:for-each select="catalog/comida[tipo='Postre']">
                    <tr>
                        <td><a href="{img}"><xsl:value-of select=" nombre " /></a></td>
                        <td><xsl:value-of select="  Kcal" />  Kcal</td>
                        <td><xsl:value-of select="Ingredientes"/></td>
                        <td><xsl:value-of select="precio"/>€</td>
                    </tr>
                </xsl:for-each>
            </table>
        </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
