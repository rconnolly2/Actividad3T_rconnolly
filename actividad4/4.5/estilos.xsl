<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/cifp">
    <html>
        <h1><xsl:value-of select="@nombre"/></h1>

        <table border="1">
            <tr>
                <td>Nom cicle</td>
                <td>Any</td>
            </tr>
            
            <xsl:for-each select="ciclos/ciclo">
                <xsl:variable name="año" select="decretoTitulo/@año"/>

                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                <xsl:choose>
                    <xsl:when test="$año &gt; 2009">
                        <td style="color: green;"><xsl:value-of select="decretoTitulo/@año"/></td>
                    </xsl:when>
                    <xsl:when test="$año = 2009">
                        <td style="color: blue;"><xsl:value-of select="decretoTitulo/@año"/></td>
                    </xsl:when>
                    <xsl:otherwise>
                        <td style="color: red;"><xsl:value-of select="decretoTitulo/@año"/></td>
                    </xsl:otherwise>
                </xsl:choose>
                </tr>

            </xsl:for-each>
            
        </table>
    </html>
</xsl:template>

</xsl:stylesheet>