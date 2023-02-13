<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:template match="root">
		<html>
			<head>
				<meta charset="UTF-8"></meta>
			</head>
			<body>
				<xsl:for-each select="color">
					<TABLE>
						<TR>
							<TD style="color:{.}">
								<xsl:value-of select ="."/>
							</TD>
						</TR>
					</TABLE>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
