<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/hitchcock">
    <html>
        <h1>Pelicula de Hitchock</h1>
        
        <xsl:for-each select="//pelicula">
            <p><strong><xsl:value-of select="titulo[@lang='es']"/></strong>, con <xsl:value-of select="actores/actor"/> y <xsl:value-of select="actores/actriz"/>, se estrenó en <xsl:value-of select="fecha"/>.</p>
        </xsl:for-each>
    </html>
</xsl:template>

</xsl:stylesheet>