::[Earth\Oce�nia] Altere o nome de Australia para Austr�lia. Copie o ficheiro de Sidney a diretoria
::Austr�lia. Apague o ficheiro de Sidney na Oceania. Altere a diretoria corrente para a Nova Zel�ndia.
::[Earth\Oce�nia\Nova Zel�ndia] Mova (sem fazer c�pia) Wellington para a Nova Zel�ndia � indique com
::destino apenas �.� (sem aspas).

@echo off

ren Australia Austr�lia
copy Sidney.txt Austr�lia\Sidney.txt
del Sidney.txt
cd Nova Zel�ndia
move ..\Wellington.txt .
