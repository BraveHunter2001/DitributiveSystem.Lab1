<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:template match="list">
		<html>
			<head>
				<meta charset="UTF-8"></meta>
			</head>
			<body>
				<p>
					<xsl:for-each select="entry">
						<xsl:value-of select ="./@name"/>
						<xsl:if test ="position()!=last()">,
						</xsl:if>
						<xsl:if test ="position()=last()">.
						</xsl:if>
					</xsl:for-each>
				</p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
