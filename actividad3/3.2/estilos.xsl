<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/hitchcock">
    <hitchcock>
        <actores>
            <xsl:for-each select="actores/actor">
                <actor><nombre><xsl:value-of select="@nombre"/></nombre></actor>
            </xsl:for-each>
        </actores>
        

        <peliculas>
            <xsl:for-each select="//pelicula">
                <xsl:element name="pelicula">
                    <xsl:attribute name="titulo">
                    <xsl:value-of select="titulo[@lang='es']"/>
                    </xsl:attribute>
                </xsl:element>
            </xsl:for-each>
        </peliculas>
    </hitchcock>
</xsl:template>

</xsl:stylesheet>