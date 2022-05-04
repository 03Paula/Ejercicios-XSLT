<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/">
        <html>
            <h1><xsl:value-of select="ies/@nombre"/></h1>
            <p>Página web:<a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ies/@web"/>
                    </xsl:attribute>
                    <xsl:value-of select="ies/@web"/>
                </a></p>
            <ul>
                <xsl:for-each select="ies/ciclos/curso">
                    <li><xsl:value-of select="titulo"/></li>
                </xsl:for-each>
            </ul>
        </html>
    </xsl:template>

</xsl:stylesheet>
