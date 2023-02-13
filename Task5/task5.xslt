<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="DS">
		<xsl:param name="node"/>
		<xsl:param name="tag"/>
		<xsl:param name="color"/>
		<xsl:for-each select="$node/*">
			<xsl:if test="$tag = name()">
				<font color="{$color}">
					<xsl:value-of select="$tag"/> id = <xsl:value-of select="@id"/>
				</font>
				<br/>
			</xsl:if>
			<xsl:call-template name="DS">
				<xsl:with-param name="node" select="." />
				<xsl:with-param name="tag" select="$tag" />
				<xsl:with-param name="color" select="$color" />
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8"></meta>
			</head>
			<body>
				<xsl:call-template name="DS">
					<xsl:with-param name="node" select="root"/>
					<xsl:with-param name="tag" select="'BBB'"/>
					<xsl:with-param name="color" select="'red'"/>
				</xsl:call-template>
				<xsl:call-template name="DS">
					<xsl:with-param name="node" select="root"/>
					<xsl:with-param name="tag" select="'CCC'"/>
					<xsl:with-param name="color" select="'blue'"/>
				</xsl:call-template>
				<xsl:call-template name="DS">
					<xsl:with-param name="node" select="root"/>
					<xsl:with-param name="tag" select="'DDD'"/>
					<xsl:with-param name="color" select="'green'"/>
				</xsl:call-template>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>