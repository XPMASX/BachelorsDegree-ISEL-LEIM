::[Earth\ Oce�nia \Nova Zel�ndia] Corrija o nome de Melbourne (use REN). Corrija o nome de Brazil para
::Brasil. Altere a diretoria corrente para Earth. [Earth] Copie todo o M�xico para a Am�rica do Norte
::com um �nico comando e de modo a n�o perguntar nada ao utilizador. Nota: coloque M�xico como
::destino e como diretoria. Apague todo o M�xico que ainda est� na Am�rica do Sul, num �nico
::comando. Mude a diretoria corrente para cmds em T:\ (sempre com paths relativas).

@echo off

ren ..\Austr�lia\Melbourni.txt Melbourne.txt
ren "..\..\Am�rica do sul\Brazil" Brasil
cd ..\..\
xcopy "Am�rica do sul\M�xico" "Am�rica do Norte\M�xico" /e /i /s
del "Am�rica do sul\M�xico\M�xico.txt" & del "Am�rica do sul\M�xico\Guadalajara.txt" & rd "Am�rica do sul\M�xico"
cd ..\cmds
