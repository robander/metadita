<?xml version="1.0" encoding="UTF-8" ?>
<!-- Copyright Metadita.org 2011
     All Rights Reserved. -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="gen-user-footer">
  <div style="font-weight: bold">
    <span>The following string is generated based on the topic language: 
      <span style="font-style: italic; font-size: 3em">
        <xsl:call-template name="getString">
          <xsl:with-param name="stringName" select="'Puffin'"/>
        </xsl:call-template>
      </span>
    </span>
  </div>
  <div style="font-style: italic">Remember that the string is only supported for documents marked
as English, Russian, Swedish, or Icelandic.</div>
</xsl:template>

</xsl:stylesheet>
