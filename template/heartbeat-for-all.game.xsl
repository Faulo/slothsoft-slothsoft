<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet version="1.0"	xmlns="http://www.w3.org/1999/xhtml"	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">	<xsl:output method="xml" indent="no" encoding="UTF-8" media-type="application/xhtml+xml" version="1.0"/>	<xsl:template match="/data">		<div>			<embed width="960" height="600" src="/getResource.php/slothsoft/unity/HeartbeatForAll" 				type="application/vnd.unity" firstframecallback="UnityObject2.instances[0].firstFrameCallback();" enabledebugging="0"/>		</div>	</xsl:template></xsl:stylesheet>