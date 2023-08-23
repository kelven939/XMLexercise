# XMLexercise
# Sites usados para a formatação dos documentos:
# https://freeformatter.com
# https://ideone.com/9QvzXt

# Para Diferenca entre HTML e o XML:
# Explicação das partes dos códigos
# a) Transformando a tabela em um documento HTML:
# O código HTML não faz uso de pacotes externos. Ele simplesmente cria uma tabela utilizando a tag <table> para criar a tabela em si e as tags <tr> para as linhas da tabela, e dentro das linhas, as tags <th> para as células de cabeçalho e <td> para as células de dados. Atributos como border são utilizados para definir a borda da tabela. O código é autoexplicativo e segue a estrutura básica de tabelas em HTML.
# b) Transformando a tabela em um documento XML bem formatado:
# Nesse caso, não é necessário utilizar pacotes externos. O código cria um documento XML estruturado com uma tag <dados> como elemento raiz. Cada linha é representada pela tag <linha>, e os dados correspondentes são representados por tags como <ID>, <Nome>, <Estrelas>, e assim por diante. Esse é um formato comum para armazenar dados em formato XML.
# c) Criando um documento DTD interno para o documento XML acima:
# Não é necessário utilizar pacotes externos para definir um DTD interno. No próprio XML, a seção de DTD interna é definida dentro de <!DOCTYPE dados [...] que especifica a estrutura esperada dos elementos no documento. Os elementos como <dados>, <linha>, <ID>, <Nome>, etc., são definidos com suas restrições de conteúdo, como em <!ELEMENT ID (#PCDATA)>, que diz que o elemento <ID> contém apenas dados de texto.
# d) Criando um documento DTD externo e fazendo a ligação com o documento XML:
# Aqui, o DTD é externo, ou seja, está em um arquivo separado chamado "dados.dtd". No XML, o <!DOCTYPE dados SYSTEM "dados.dtd"> faz referência a esse arquivo externo. O conteúdo do DTD especifica a mesma estrutura do documento XML, definindo os elementos e seus tipos. Isso ajuda a validar o XML em relação ao DTD e a manter a estrutura consistente.

# Para XSLT:
# Explicações:
# xsl:template match="/": Este é o template raiz que define a estrutura básica do documento de saída. Aqui, estamos criando um documento HTML com uma tabela.
# xsl:apply-templates: Esta instrução aplica os templates correspondentes a elementos específicos no documento XML de entrada. No contexto de cada 'linha', estamos aplicando o template que extrai os dados e os formata como uma linha da tabela.
<xsl:sort select="Nome"/> e <xsl:sort select="Estrelas"/>: 
# Isso ordena as 'linhas' com base nos valores dos atributos 'Nome' ou 'Estrelas', respectivamente.
<xsl:value-of select="..."/>: 
# Isso extrai o valor do elemento correspondente no XML.
