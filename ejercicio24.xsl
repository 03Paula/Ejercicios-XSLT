<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/">
        <html>
            <h1><xsl:value-of select="ies/@nombre"/></h1>
            <p>Página web: <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="ies/@web"/>
                </xsl:attribute>
                <xsl:value-of select="ies/@web"/>
            </a></p>
            <table border="1">
                <tr>
                    <th>Título del cliclo</th>
                    <th>Nivel</th>
                    <th>Año del RD del título</th>
                </tr>
                <xsl:for-each select="ies/ciclos/curso">
                    <tr>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="nivel"/></td>
                        <td><xsl:value-of select="decreto/@año"/></td>
                    </tr>
                 </xsl:for-each>
            </table>
        </html>
    </xsl:template>
</xsl:stylesheet>    