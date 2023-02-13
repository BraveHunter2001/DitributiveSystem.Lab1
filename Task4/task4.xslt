<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt">
	<xsl:template name ="DS">
		<xsl:param name="current-node"/>
		<xsl:if test ="count($current-node/*) != 0">
			<xsl:for-each select="$current-node/*">
				<tr>
					<td>
						<xsl:value-of select ="local-name()"/> id = <xsl:value-of select ="./@id"/>
					</td>
					<td>
						<xsl:if test ="count(..) != 0">
							<xsl:value-of select ="../@id"/>
						</xsl:if>
					</td>
				</tr>
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
				<table border="1" cellpadding="6">
					<tr>
						<th colspan="2">Axis: child</th>
					</tr>
					<tr>
						<th>Element</th>
						<th>Node-set</th>
					</tr>
					<xsl:call-template name="DS">
						<xsl:with-param name="current-node" select="root"/>
					</xsl:call-template>
				</table>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>