#este é um arquivo Makefile - um script para chamar o compilador (compiler), e montadores (linkers) para gerar o seu executável
#com recomendações, em uma forma acessível - arquivo de texto que poder ser usado em qualquer computador
#que pode ser usado diretamente ou servir de guia para quem quiser usar um ambiente de desenvolvimento interativo IDE diferente.

#Aqui definimos opções recomendadas
# -g: Produce debugging information in the operating system's native format (stabs, COFF, XCOFF, or DWARF 2). GDB can work with this debugging information.
# -Wall: Enables commonly used warning options pertaining to usage that we recommend avoiding and that we believe are easy to avoid.
# -fcheck=all:Enable the generation of run-time checks; the argument shall be a delimited list of the following keywords.
# -cpp: Enable preprocessing.
# -fmax-errors=1: Limits the maximum number of error messages to n, at which point GNU Fortran bails out rather than attempting to continue processing the source code.
# -ffree-line-length-none: Set column after which characters are ignored in typical free-form lines in the source file. The default value is 132. n may be none, meaning that the entire line is meaningful.
# -O3: These options control various sorts of optimizations. Without any optimization option, the compiler's goal is to reduce the cost of compilation and to make debugging produce the expected results. Statements are independent: if you stop the program with a breakpoint between statements, you can then assign a new value to any variable or change the program counter to any other statement in the function and get exactly the results you expect from the source code. Turning on optimization flags makes the compiler attempt to improve the performance and/or code size at the expense of compilation time and possibly the ability to debug the program. The compiler performs optimization based on the knowledge it has of the program. Compiling multiple files at once to a single output file mode allows the compiler to use information gained from all of the files when compiling each of them. Not all optimizations are controlled directly by a flag. Only optimizations that have a flag are listed in this section. Most optimizations are only enabled if an -O level is set on the command line. Otherwise they are disabled, even if individual optimization flags are specified. Depending on the target and how GCC was configured, a slightly different set of optimizations may be enabled at each -O level than those listed here. You can invoke GCC with -Q --help=optimizers to find out the exact set of optimizations that are enabled at each level.
F90_BASIC_OPTIONS = -g -Wall -fcheck=all -fmax-errors=1 -ffree-line-length-none
F90_DEBUG_OPTIONS = -fcheck=all
F90_RELEASE_OPTIONS = -O3

DASSLOPTIONS = -O3

COMPILER = gfortran
LINKER = gfortran

.DEFAULT_GOAL = RUN

.PHONNY: RUN

ObjetosCompilados = ObjetosCompilados/daux.o ObjetosCompilados/ddassl.o ObjetosCompilados/dlinpk.o ObjetosCompilados/res.o ObjetosCompilados/jac.o ObjetosCompilados/main.o

daux.o: DASSLsrc/daux.f
	$(COMPILER) $(FOR_BASIC_OPTIONS) -JObjetosCompilados/ -c DASSLsrc/daux.f -o ObjetosCompilados/daux.o
	
ddassl.o: DASSLsrc/ddassl.f dlinpk.o daux.o jac.o res.o
	$(COMPILER) $(FOR_BASIC_OPTIONS) -JObjetosCompilados/ -c DASSLsrc/ddassl.f -o ObjetosCompilados/ddassl.o
	
dlinpk.o: DASSLsrc/dlinpk.f
	$(COMPILER) $(FOR_BASIC_OPTIONS) -JObjetosCompilados/ -c DASSLsrc/dlinpk.f -o ObjetosCompilados/dlinpk.o
	
jac.o: Example1src/jac.f90
	$(COMPILER) $(F90_BASIC_OPTIONS) $(F90_DEBUG_OPTIONS) -JObjetosCompilados/ -c Example1src/jac.f90 -o ObjetosCompilados/jac.o
	
res.o: Example1src/res.f90
	$(COMPILER) $(F90_BASIC_OPTIONS) $(F90_DEBUG_OPTIONS) -JObjetosCompilados/ -c Example1src/res.f90 -o ObjetosCompilados/res.o
	
main.o: Example1src/main.f90
	$(COMPILER) $(F90_BASIC_OPTIONS) $(F90_DEBUG_OPTIONS) -JObjetosCompilados/ -c Example1src/main.f90 -o ObjetosCompilados/main.o
	
ObjetosCompilados/main.elf: Example1src/main.f90 main.o ddassl.o
	$(LINKER) $(F90_BASIC_OPTIONS) $(F90_DEBUG_OPTIONS) -JObjetosCompilados/ $(ObjetosCompilados) -o ObjetosCompilados/main.elf
	
RUN: ObjetosCompilados/main.elf
	ObjetosCompilados/main.elf
