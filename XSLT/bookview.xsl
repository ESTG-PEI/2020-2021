<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <h2>My books</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>author</th>
                        <th>title</th>
                        <th>genre</th>
                        <th>price</th>
                        <th>publish date</th>
                        <th>description</th>
                    </tr>
                    <xsl:for-each select="/catalog/book">
                    <tr>
                        <td><xsl:value-of select="author"/></td>
                        <td><xsl:value-of select="title"/></td>
                        <td><xsl:value-of select="genre"/></td>
                        <td><xsl:value-of select="price"/></td>
                        <td><xsl:value-of select="publish_date"/></td>
                        <td><xsl:value-of select="description"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>