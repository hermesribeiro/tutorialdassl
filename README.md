#Tutorial para usar a subrotina DASSL
Neste tutorial você aprenderá a usar a rotina de solução de sistemas de equações algébrico diferenciais (DAEs) DASSL.

#Modo de usar o tutorial
1 - Baixe o repositório presente em [github.com/hermesribeiro/tutorialdassl] sera baixado com o nome (tutorialdassl-master.zip)
3 - Descompacte o arquivo
4 - Leia o arquivo "presentation/Apresentação DASSL Atoms How.odp"
5 - Instale um compilador fortran de sua preferência

##Utilizando o Netbeans + gfortran
1 - Abra o Netbeans
2 - Vá em File->New Project
3 - Na caixa Categories selecione C/C++
4 - Na caixa Projects selecione C/C++ Application e clique Next>
5 - Designe um nome e uma localização para seu projeto e clique Finish
6 - Na aba "Projects", clique com botão direito em "Source Files" e botão esquerdo em "Add Existing Item..."
7 - Adicione os arquivos da pasta 

##Utilizando terminal Linux 
TBA

#Pré requesitos
- Noções de programação
- Noções de sistemas de equações algébricas/diferenciais

#O que você vai aprender aqui
- Noções intermediárias da DASSL
- Integrar numéricamente sistemas de DAEs
- Resolver numericamente o problema de enchimento de tanque

#O que você NÃO vai aprender aqui
- Programação em FORTRAN
- Instalação/uso de compiladores
- O método numérico utilizado pela DASSL

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

