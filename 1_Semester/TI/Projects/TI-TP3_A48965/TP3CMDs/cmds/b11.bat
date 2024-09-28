::[cmds] Para todas as cidades existentes dentro de Earth, mostre cada uma numa linha com: o
::continente, o pa�s, a cidade e a sua popula��o, tudo separado por um caractere �-� (sinal de menos).
::Dever� produzir linhas do g�nero: �frica-Angola-Huambo-12000000. Utilize um FOR para os
::continentes, outro para os pa�ses, e outro para as cidades. Para as cidades utilize um FOR /F para obter
::a sua popula��o. Dado que h� cidades com espa�os no seu nome � necess�rio indicar para usar nomes
::com aspas (colocar nas op��es �tokens=1 usebackq�) e colocar o nome entre aspas: � in (�%%x�), com
::x o nome da cidade.

@echo off

setlocal
setlocal EnableDelayedExpansion

cd ../Earth


for /d %%i in (*) do (
	for /d %%j in ("%%i"\*) do (
		for %%k in ("%%j"\*) do (
			for /f "tokens=1 usebackq" %%y in ("%%k") do echo %%k - %%y
			
		)
	)
)

endlocal

