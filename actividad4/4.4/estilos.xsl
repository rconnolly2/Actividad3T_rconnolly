<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/cifp">
    <html>
        <ol>
        <xsl:for-each select="ciclos/ciclo">
            <xsl:sort select="nombre" order="descending"/>
            <li><xsl:value-of select="nombre"/> (<xsl:value-of select="grado"/>)</li>
        </xsl:for-each>
        </ol>
    </html>
</xsl:template>

</xsl:stylesheet>