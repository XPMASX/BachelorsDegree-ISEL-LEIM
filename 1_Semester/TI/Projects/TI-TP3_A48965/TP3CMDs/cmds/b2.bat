::[CMDLine\TP3CMD\cmds] Crie a drive mapeada T: que dever� referenciar CMDLine\TP3CMD. Caso j�
::tenha essa drive letter ocupada utilize outra, mas tenha em conta que este enunciado tem em conta
::a drive T:. Mude para a drive T:. Altere a diretoria corrente para cmds com "cd T:\cmds". Aqui deve
::utilizar um path absoluto. Altere o Code Page do CMD para Windows-1252. Mostre o conte�do da
::diretoria corrente (use dir). Adicione a diretoria corrente � path com �set path=%CD%;%path%�. Desta
::forma, pode-se executar, a partir de qualquer localiza��o, os batch files que est�o cmds. Cada vez que
::abrir um cmd (por ex.� com o b1.bat) deve executar este batch file (ignore o erro ao tentar criar a
::drive T:, pois esta j� estar� criada).

@echo off

cd ..\ 
Subst T: %CD%
T: & cd cmds
chcp 1252
dir
set path=%CD%;%path%