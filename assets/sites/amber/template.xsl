<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns="http://schema.slothsoft.net/farah/sites"
	xmlns:sfm="http://schema.slothsoft.net/farah/module"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/*">
		<pages>
			<xsl:apply-templates select="*[@name='index']/*"/>
		</pages>
	</xsl:template>
	
	<xsl:template match="game">
		<xsl:variable name="game" select="@name"/>
		<page name="{@title}" ref="{$game}/description"
			status-active="" status-public="">
			<sfm:param name="game" value="{$game}" />
			
			<page name="EditorHelp" ref="{$game}/description"
				status-active="" status-public="" />
			<page name="Downloads" ref="{$game}/description" status-active="" status-public=""/>
			
			<xsl:apply-templates select="mod"/>
			
			
			<page name="SavegameEditor" title="SavegameEditor"
				redirect="/Ambermoon/Thalion-v1.05-DE/SaveEditor" status-active="" />
			<page name="GamedataEditor" title="GamedataEditor"
				redirect="/Ambermoon/Thalion-v1.05-DE/GameEditor" status-active="" />
			<page name="GameEditor" title="GameEditor"
				redirect="/Ambermoon/Thalion-v1.05-DE/GameEditor" status-active="" />
				
			<page name="ExperienceChart" title="ExperienceChart"
				redirect="/Ambermoon/Thalion-v1.05-DE/GameData/ClassList" status-active="" />
			<page name="ItemList" title="ItemList"
				redirect="/Ambermoon/Thalion-v1.05-DE/GameData/ItemList" status-active="" />
			<page name="PortraitList" title="PortraitList"
				redirect="/Ambermoon/Thalion-v1.05-DE/GameData/PortraitList" status-active="" />
		</page>
	</xsl:template>
	
	
	<xsl:template match="mod">
		<xsl:variable name="game" select="../@name"/>
		<page name="{@name}" ref="{$game}/description"
			status-active="">
			<xsl:if test="not(@hidden)">
				<xsl:attribute name="status-public"/>
			</xsl:if>
			<sfm:param name="mod" value="{@name}" />
			<page name="SaveEditor" title="SavegameEditor" ref="{$game}/editor"
				status-active="" status-public="">
				<sfm:param name="preset" value="saveEditor" />
			</page>
			<page name="GameEditor" title="GameEditor" ref="{$game}/editor"
				status-active="" >
				<sfm:param name="preset" value="gameEditor" />
			</page>
			<page name="GameData" title="GameData" ref="{$game}/description" status-active="" status-public="">			
				<page name="ItemList" title="ItemList" ref="{$game}/resource"
					status-active="" status-public="">
					<sfm:param name="id" value="items" />
				</page>
				<page name="PCList" title="PCList" ref="{$game}/resource"
					status-active="" status-public="">
					<sfm:param name="id" value="pcs" />
				</page>
				<page name="NPCList" title="NPCList" ref="{$game}/resource"
					status-active="" status-public="">
					<sfm:param name="id" value="npcs" />
				</page>
				<page name="MonsterList" title="MonsterList" ref="{$game}/resource"
					status-active="" status-public="">
					<sfm:param name="id" value="monsters" />
				</page>
				<page name="ClassList" title="ClassList" ref="{$game}/resource"
					status-active="" status-public="">
					<sfm:param name="id" value="classes" />
				</page>
				<page name="PortraitList" title="PortraitList" ref="{$game}/resource"
					status-active="" status-public="">
					<sfm:param name="id" value="portraits" />
				</page>
				<page name="Maps2D" title="Maps2D" ref="{$game}/resource"
					status-active="" status-public="">
					<sfm:param name="id" value="maps.2d" />
				</page>
				<page name="Maps3D" title="Maps3D" ref="{$game}/resource"
					status-active="" status-public="">
					<sfm:param name="id" value="maps.3d" />
				</page>
				<page name="WorldmapLyramion" title="WorldmapLyramion" ref="{$game}/resource"
					status-active="" >
					<sfm:param name="id" value="worldmap.lyramion" />
				</page>
				<page name="WorldmapKire" title="WorldKire" ref="{$game}/resource"
					status-active="" status-public="">
					<sfm:param name="id" value="worldmap.kire" />
				</page>
				<page name="WorldmapMorag" title="WorldmapMorag" ref="{$game}/resource"
					status-active="" status-public="">
					<sfm:param name="id" value="worldmap.morag" />
				</page>
			</page>
		</page>
	</xsl:template>
</xsl:stylesheet>
				