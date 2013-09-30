<?xml version="1.0" encoding="UTF-8" ?>
<!-- Copyright Metadita.org 2011
     All Rights Reserved. -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- <xsl:param name="DAY" select="'TUESDAY'"/> -->
  <xsl:param name="DAY" select="'MONDAY'"/>

  <xsl:template match="text()">
    <xsl:choose>
      <xsl:when test="$DAY='WEDNESDAY'">
        <xsl:call-template name="reverse">
          <xsl:with-param name="fullstring" select="."/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:next-match/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="reverse">
    <xsl:param name="fullstring"/>
    <xsl:if test="string-length($fullstring)>1">
      <xsl:call-template name="reverse">
        <xsl:with-param name="fullstring" select="substring($fullstring,2,number(string-length($fullstring)-1))"/>
      </xsl:call-template>
    </xsl:if>
    <xsl:value-of select="substring($fullstring,1,1)"/>
  </xsl:template>

</xsl:stylesheet>
