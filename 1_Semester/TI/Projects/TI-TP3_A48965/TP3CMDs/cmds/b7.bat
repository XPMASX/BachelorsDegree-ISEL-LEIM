::[Earth\�sia\China] Crie o ficheiro com a cidade de Shanghai com uma popula��o de 24000000 por
::redirec��o de output, com: echo xxxx > file. Mostre o conte�do de Shanghai.txt (que deve ter 24
::milh�es em valor num�rico) (use type). Crie o pa�s Per� na Am�rica do Sul, com as cidades de Lima
::(com 9800000 de pop.) e Arequipa (com 900000 �). (Nota: n�o altere a diretoria corrente sem ser
::solicitado). Altere o nome da diretoria de Oceania para Oce�nia. Altere a diretoria corrente para a
::Oce�nia. Nota: caso obtenha Access Denied, sem ter nenhum ficheiro aberto dentro de Oceania, feche
::algum Explorer que tenha aberto com essa diretoria vis�vel

@echo off

echo 24000000>Shangai.txt
type Shangai.txt
md "..\..\Am�rica do Sul\Per�"
echo 9800000>"..\..\Am�rica do sul\Per�\Lima.txt" & echo 900000>"..\..\Am�rica do sul\Per�\Arequipa.txt"
ren "..\..\Oceania" Oce�nia
cd "..\..\Oce�nia"
