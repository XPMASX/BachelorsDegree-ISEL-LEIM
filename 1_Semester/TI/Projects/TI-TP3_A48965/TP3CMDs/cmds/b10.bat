::[cmds] Escreva tantos caracteres #, em termos de linhas e colunas, quantos os indicados pelo
::utilizador. Para tal, pe�a (com set /p) ao utilizador o n�mero de linhas e colunas, e depois, utilizando
::dois FOR /L, mostre caracteres # nesse n�mero de linhas e colunas.

@echo off

setlocal
setlocal EnableDelayedExpansion

set /p linhas="Introduza o numero de linhas: "
set /p colunas="Introduza o numero de colunas: "

FOR /L %%N IN (1,1, %colunas%) DO ( 
	set val=!val!#
)

FOR /L %%N IN (1,1, %linhas%) DO ( 
	echo %val%
)
	
endlocal