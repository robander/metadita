<xsl:stylesheet version="1.0" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fox="http://xml.apache.org/fop/extensions">

  <xsl:template match="*[contains(@class,' cmdref/WhenToUse ')]">
    <h3>When To Use This Command</h3>
    <xsl:apply-imports/>
  </xsl:template>

  <xsl:template match="*[contains(@class,' cmdref/cmdresult ')]">
    <h3>Result of running the command</h3>
    <xsl:apply-imports/>
  </xsl:template>
           
  
</xsl:stylesheet>