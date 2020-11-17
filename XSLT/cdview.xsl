<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>My CD Collection</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Year</th>
                        <th>Country</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="/CATALOG/CD">
                     <tr>
                         <td><xsl:value-of select="TITLE"/></td>
                         <td><xsl:value-of select="ARTIST"/></td>
                         <td><xsl:value-of select="YEAR"/></td>
                         <td><xsl:value-of select="COUNTRY"/></td>
                         <td><xsl:value-of select="PRICE"/></td>
                     </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>