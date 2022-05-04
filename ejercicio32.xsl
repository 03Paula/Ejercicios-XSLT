<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/">
        <lenguajes>
            <xsl:for-each select="lenguajes/lenguaje">
                <lenguaje>
                    <nombre><xsl:value-of select="nombre"/></nombre>
                    <caracteristicas>
                        <xsl:attribute name="ambitoPrincipal">
                            <xsl:value-of select="ambitoPrincipal"/>
                        </xsl:attribute>
                        <xsl:attribute name="ultimaVersion">
                            <xsl:value-of select="ultimaVersion"/>
                        </xsl:attribute>
                    </caracteristicas>
                </lenguaje>
            </xsl:for-each>
        </lenguajes>
    </xsl:template>
</xsl:stylesheet>