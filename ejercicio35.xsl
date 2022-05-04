<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/">
        <ambitos>
            <xsl:for-each select="lenguajes/lenguaje[last()-1]">
                <ambito>
                    <lenguaje>
                        <xsl:attribute name="version">
                            <xsl:value-of select="ultimaVersion"/>
                        </xsl:attribute>
                        <xsl:value-of select="nombre"/>
                    </lenguaje>
                </ambito>
            </xsl:for-each>
        </ambitos>
    </xsl:template>
</xsl:stylesheet>