<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:t="http://www.sitemaps.org/schemas/sitemap/0.9"
	xmlns:news="http://www.google.com/schemas/sitemap-news/0.9">
	
   <xsl:template match="/t:urlset">
     <html>
       <body>
		 <table>
		 <xsl:for-each select="t:url">
			<tr>
			<td><xsl:value-of select="news:news/news:publication_date" /></td>
			<td>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="t:loc"/>
					</xsl:attribute>
					<xsl:value-of select="news:news/news:title"/>
				</a>
			</td>
			</tr>
		 </xsl:for-each>
		 </table>
       </body>
     </html>
   </xsl:template>
   
</xsl:stylesheet>