# Tutorial para usar a subrotina DASSL
Neste tutorial você aprenderá a usar a rotina de solução de sistemas de equações algébrico diferenciais (DAEs) DASSL.

# Modo de usar o tutorial
1. Baixe o repositório presente no github.com/hermesribeiro/tutorialdassl sera baixado com o nome(tutorialdassl-master.zip)
3. Descompacte o arquivo
4. Leia o arquivo "presentation/Apresentação DASSL Atoms How.odp"
5. Instale um compilador fortran de sua preferência

### Utilizando o Netbeans + gfortran
1. Abra o Netbeans
2. Vá em File->New Project
3. Na caixa Categories selecione C/C++
4. Na caixa Projects selecione C/C++ Application e clique Next>
5. Defina um nome e uma localização para seu projeto e clique Finish
6. Na aba "Projects", clique com botão direito em "Source Files" e botão esquerdo em "Add Existing Item..."
7. Adicione os arquivos "jac.f90", "res.f90" e "main.f90" presentes na pasta "Example1src"
8. Faça o mesmo para os arquivos "ddassl.f", "daux.f" e "dlink.f" presentes na pasta "DASSLsrc"
9. Leia o arquivo fonte para entender o código "main.f90" e "res.f90"
10. Compille e execute o programa em Run->Run Project

### Utilizando terminal Linux 
TBA

# Pré requesitos
- Noções de programação
- Noções de sistemas de equações algébricas/diferenciais

# O que você vai aprender aqui
- Noções intermediárias da DASSL
- Integrar numericamente sistemas de DAEs
- Resolver numericamente o problema de enchimento de tanque

# O que você NÃO vai aprender aqui
- Programação em FORTRAN
- Instalação/uso de compiladores
- O método numérico utilizado pela DASSL

# Estrutura de arquivos desse material:
a seguir lista de arquivos e pastas explicando 

## DASSLsrc/
Pasta onde ficam os códigos da autora Linda Petzold, que utilizamos nesse curso, sem modificações.

## Example1src/
Pasta onde ficam os códigos fonte do problema a ser resolvido e resultados no arquivo SAIDA.txt e gráfico na planilha SAIDA.ods

## ObjetosCompilados/
Essa é a pasta que o script do Makefile usará, por padrão, para guardar os arquivos compilados.
Uma IDE específica poderá utilizar um diretório diferente

## presentation/
Aqui fica a apresentação de slides utilizada no curso

## PLACE INPUT-OUTPUT FILES HERE
Este arquivo é criado automaticamente pelo programa, para mostrar onde os arquivos input devem ficar localizados, em caso de erro de leitura.

## Makefile
Temos um arquivo Makefile - um script para chamar o compilador (compiler), e montadores (linkers) para gerar o seu executável
com recomendações, em uma forma acessível - arquivo de texto que poder ser usado em qualquer computador
que pode ser usado diretamente ou servir de guia para quem quiser usar um ambiente de desenvolvimento interativo IDE diferente.

