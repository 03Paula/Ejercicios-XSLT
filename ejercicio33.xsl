<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/">
        <ambitos>
            <xsl:for-each select="lenguajes/lenguaje">
                <ambito>
                    <denominacion><xsl:value-of select="ambitoPrincipal"/></denominacion>
                    <lenguaje><xsl:value-of select="nombre"/></lenguaje>
                    <version><xsl:value-of select="ultimaVersion"/></version>
                </ambito>
            </xsl:for-each>
        </ambitos>
    </xsl:template>
</xsl:stylesheet>