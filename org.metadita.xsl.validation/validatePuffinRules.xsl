<?xml version="1.0" encoding="UTF-8" ?>
<!-- Copyright Metadita.org 2011
     All Rights Reserved. -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:import href="plugin:org.dita.base:xsl/common/output-message.xsl"/>

  <xsl:variable name="msgprefix">DOTX</xsl:variable>

  <!-- This program just scans for conditions we deem important.
       If the conditions are not met, a message is generated.
       No useful output is created. -->

  <xsl:template match="/">
    <xsl:for-each select="//*[contains(@class,' topic/topic ')]">
      <xsl:if test="not(*[contains(@class,' topic/related-links ')]//*[contains(@href,'puffin')])">
        <!-- Warn that the topic does not contain a link with 'puffin' in the URL. -->
        <!-- Yes, it's crazy, but it tries to prove a point. -->
        <xsl:call-template name="output-message">
          <xsl:with-param name="msgnum">puffin1</xsl:with-param>
          <xsl:with-param name="msgsev">W</xsl:with-param>
        </xsl:call-template>
      </xsl:if>
      <xsl:if test="not(*[contains(@class,' topic/shortdesc ')])">
        <!-- More realistic scenario actually in place at some companies.
             Put out a warning for any topic that does not use <shortdesc>. -->
        <xsl:call-template name="output-message">
          <xsl:with-param name="msgnum">puffin2</xsl:with-param>
          <xsl:with-param name="msgsev">W</xsl:with-param>
        </xsl:call-template>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
