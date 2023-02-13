<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt">
	<xsl:template match="employees">
		<html>
			<head></head>
			<body>
				<xsl:for-each select="employee">
						<b><i><xsl:value-of select ="./@id"/></i></b> <xsl:value-of select ="."/><br/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>