<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">

  <xsl:import href="plugin:org.dita.html5:xsl/dita2html5.xsl"/>

  <xsl:template match="*[contains(@class,' topic/title ')]//text()">
    <xsl:value-of select="translate(.,' ','☺')"/>
  </xsl:template>  
  
  <xsl:template match="*[contains(@class,' topic/li ')]//text()">
    <xsl:value-of select="translate(.,' ','&#x1F61C;')"/>
  </xsl:template>

</xsl:stylesheet>
