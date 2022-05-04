<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
version="1.0">

    <xsl:template match="/">
        <xsl:value-of select="ies/@nombre"/>
        <xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="ies/ciclos/ciclo">
            <xsl:value-of select="decretoTitulo/@año"/> - <xsl:value-of select="nombre"/> (<xsl:value-of select="@id"/>)
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>