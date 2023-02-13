<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt">
	<xsl:template name ="DS">
		<xsl:param name="current-node"/>
		<xsl:if test ="count($current-node/*) != 0">
			<xsl:for-each select="$current-node/*">

				<xsl:if test ="local-name() = 'BBB'">
					<font color="red">
						<xsl:value-of select ="local-name()"/> id = <xsl:value-of select ="./@id"/><br/>
					</font>
				</xsl:if>

				<xsl:if test ="local-name() = 'CCC'">
					<font color="blue">
						<xsl:value-of select ="local-name()"/> id = <xsl:value-of select ="./@id"/><br/>
					</font>
				</xsl:if>
				<xsl:if test ="local-name() = 'DDD'">
					<font color="green">
						<xsl:value-of select ="local-name()"/> id = <xsl:value-of select ="./@id"/><br/>
					</font>
				</xsl:if>
				
				<xsl:call-template name="DS">
					<xsl:with-param name="current-node" select="."/>
				</xsl:call-template>
			</xsl:for-each >
		</xsl:if>
	</xsl:template>

	<xsl:template match="/">
		<html>
			<head></head>
			<body>
				
					<xsl:call-template name="DS">
						<xsl:with-param name="current-node" select="root"/>
					</xsl:call-template>
				
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>