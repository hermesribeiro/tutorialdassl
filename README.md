#Tutorial para usar DASSL

#Pré requesitos

#O que você vai aprender aqui

#O que você não vai aprender aqui

#Estrutura de arquivos desse material:
a seguir lista de arquivos e pastas explicando 

##DASSLsrc/
Pasta onde ficam os códigos da autora Petzold, que utilizamos nesse curso, sem modificações.

##Example1src/
Pasta onde ficam os códigos fontes do problema a ser resolvido e resultados no arquivo SAIDA.txt e gráfico na planilha SAIDA.ods

##ObjetosCompilados/
Essa é a pasta que o script do Makefile usará, por padrão, para guardar os arquivos compilados.
uma IDE específica poderá utilizar um diretório diferente

##presentation/
Aqui fica a apresentação de slides utilizada no curso

##path.txt
Arquivo para ficar no diretório base em que se dá a exeução do programa, contendo o caminho relativo desse diretório até o diretório em que se deseja registrar o arquivo SAIDA.txt
recomenda-se que esse diretório final seja o diretório Example1src/, em que fica a planilha SAIDA.ods linkada ao arquivo de texto SAIDA.txt
escrever o caminho relativo entre aspas simples e terminando em "/".
e.g. 'Example1src/'

##PUT "path.txt" HERE
Este arquivo é criado automaticamente pelo programa, para mostrar onde o arquivo path.txt deve ficar localizado, em caso de dúvida pelo usuário deste material

##Makefile
Temos um arquivo Makefile - um script para chamar o compilador (compiler), e montadores (linkers) para gerar o seu executável
com recomendações, em uma forma acessível - arquivo de texto que poder ser usado em qualquer computador
que pode ser usado diretamente ou servir de guia para quem quiser usar um ambiente de desenvolvimento interativo IDE diferente.

