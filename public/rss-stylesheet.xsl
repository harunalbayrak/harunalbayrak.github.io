<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:atom="http://www.w3.org/2005/Atom"
  xmlns:dc="http://purl.org/dc/elements/1.1/">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title><xsl:value-of select="/rss/channel/title"/> — RSS</title>
        <style>
          * { margin: 0; padding: 0; box-sizing: border-box; }
          body { background: #FAFAF8; font-family: 'Inter', -apple-system, sans-serif; color: #1C1917; padding: 3rem 1.5rem; max-width: 720px; margin: 0 auto; line-height: 1.7; }
          h1 { font-size: 1.5rem; font-weight: 600; margin-bottom: 0.5rem; }
          p.sub { color: #78716C; margin-bottom: 2.5rem; font-size: 0.9rem; }
          .item { padding: 1.5rem 0; border-top: 1px solid #D4D4D0; }
          .item:first-of-type { border-top: none; }
          .item a { font-size: 1.1rem; font-weight: 550; color: #0D9488; text-decoration: none; }
          .item a:hover { color: #0F766E; }
          .item .desc { color: #78716C; margin-top: 0.35rem; font-size: 0.9rem; }
          .item .date { font-family: 'SF Mono', monospace; font-size: 0.75rem; color: #A8A29E; margin-top: 0.5rem; }
          .footer { margin-top: 2.5rem; padding-top: 1rem; border-top: 1px solid #D4D4D0; font-size: 0.8rem; color: #A8A29E; }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="/rss/channel/title"/></h1>
        <p class="sub"><xsl:value-of select="/rss/channel/description"/></p>
        <xsl:for-each select="/rss/channel/item">
          <div class="item">
            <a href="{link}"><xsl:value-of select="title"/></a>
            <p class="desc"><xsl:value-of select="description"/></p>
            <p class="date"><xsl:value-of select="pubDate"/></p>
          </div>
        </xsl:for-each>
        <p class="footer">Subscribe to stay updated · <xsl:value-of select="/rss/channel/link"/></p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
