<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/cifp">
    <xsl:for-each select="ciclos/ciclo">
        <xsl:value-of select="nombre "/>
    </xsl:for-each>
</xsl:template>

</xsl:stylesheet>