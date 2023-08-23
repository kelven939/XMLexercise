<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- O template raiz define a estrutura do documento de saída -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Tabela Ordenada por Nome</title>
      </head>
      <body>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Estrelas</th>
            <th>Área</th>
            <th>Endereço</th>
            <th>Distância</th>
            <th>Disponibilidade</th>
          </tr>
          <!-- Aplica os templates para cada 'linha', ordenando por 'Nome' -->
          <xsl:apply-templates select="//linha">
            <xsl:sort select="Nome"/>
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>
  <!-- O template para elementos 'linha' extrai os dados e cria uma linha da tabela -->
  <xsl:template match="linha">
    <tr>
      <td><xsl:value-of select="ID"/></td>
      <td><xsl:value-of select="Nome"/></td>
      <td><xsl:value-of select="Estrelas"/></td>
      <td><xsl:value-of select="Area"/></td>
      <td><xsl:value-of select="Endereco"/></td>
      <td><xsl:value-of select="Distancia"/></td>
      <td><xsl:value-of select="Disponibilidade"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>