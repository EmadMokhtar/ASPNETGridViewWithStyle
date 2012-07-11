<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <customers>
            <xsl:apply-templates select="//customer"/>
        </customers>
    
</xsl:template>

    <xsl:template match ="//customer">
        <customer>
            <xsl:attribute name="id">
                <xsl:value-of select="id"/>
            </xsl:attribute>
            <xsl:attribute name="name">
                <xsl:value-of select="name"/>
            </xsl:attribute>
            <xsl:attribute name="phone">
                <xsl:value-of select="phone"/>
            </xsl:attribute>
        </customer>
    </xsl:template>    
</xsl:stylesheet>
