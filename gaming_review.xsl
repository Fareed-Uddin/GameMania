<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Game Mania</title>
        <link rel="stylesheet" type="text/css" href="styles.css" />
      </head>
      <body>
        <div id="container">
          <h1>Game Mania</h1>
          <xsl:apply-templates select="//game-review" />
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="game-review">
    <div class="game-review">
      <h2><xsl:value-of select="h2" /></h2>
      <div class="game-info">
        <img src="{game-info/img/@src}" alt="{game-info/img/@alt}" />
        <p><xsl:value-of select="game-info/p" /></p>
      </div>
      <div class="game-rating">
        <h3><xsl:value-of select="game-rating/h3" /></h3>
        <p>User Reviews:</p>
        <xsl:apply-templates select="game-rating/user-review" />
      </div>
    </div>
  </xsl:template>

  <xsl:template match="user-review">
    <div class="user-review">
      <h4><xsl:value-of select="h4" /></h4>
      <p><xsl:value-of select="p" /></p>
      <span class="rating">Rating: <xsl:value-of select="span" /></span>
    </div>
  </xsl:template>

</xsl:stylesheet>
