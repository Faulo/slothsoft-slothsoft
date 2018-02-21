<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet version="1.0"	xmlns="http://www.w3.org/1999/xhtml"	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">	<xsl:template match="/*">		<article>			<h2>Angaben gemäß § 5 TMG:</h2>			<xsl:call-template name="address-full">				<xsl:with-param name="address" select="*[@name='owner']/*"/>			</xsl:call-template>		</article>	</xsl:template>	<xsl:template name="address-full">		<xsl:param name="address"/>		<address data-template="address-full">			<xsl:value-of select="$address/@firstName"/>			<xsl:text> </xsl:text>			<xsl:value-of select="$address/@lastName"/>			<br/>			<xsl:value-of select="$address/@street"/>			<br/>			<xsl:value-of select="$address/@zipcode"/>			<xsl:text> </xsl:text>			<xsl:value-of select="$address/@city"/>			<br/>			<br/>			<xsl:text>Telefon: </xsl:text>			<xsl:value-of select="$address/@phone"/>			<br/>			<xsl:text>E-Mail: </xsl:text>			<xsl:value-of select="$address/@email"/>		</address>	</xsl:template></xsl:stylesheet>