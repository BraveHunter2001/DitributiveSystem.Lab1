<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt">
	<xsl:template match="root">
		<html>
			<head></head>
			<body>
				<xsl:for-each select="./*">
					<p>
						<xsl:value-of select ="local-name()"/> id = <xsl:value-of select ="./@id"/>
					</p>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>