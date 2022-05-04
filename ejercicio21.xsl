<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/">
        <html>
            <h1><xsl:value-of select="ies/@nombre"/></h1>
            <xsl:for-each select="ies/ciclos/curso">
                <p><xsl:value-of select="titulo"/></p>
            </xsl:for-each>
        </html>
    </xsl:template>
</xsl:stylesheet>
