::[\] Mostre todo o conte�do de Earth em termos de subdiretorias e ficheiros e para todos os n�veis de
::profundidade. Repita mas mostrando apenas as subdiretorias. Mostre todo o conte�do de Earth em
::termos de subdiretorias e para todos os n�veis de profundidade, mas com visualiza��o em �rvore
::(tree). Repita mas mostrando tamb�m os ficheiros existentes.

@echo off

dir Earth /S
dir /S /AD
tree Earth
tree Earth /f
