@echo off

chcp 1252

title Cão Arrependido

color 3E

cls

set cao=Volta o cão arrependido, com suas orelhas tão fartas, com seu osso roído, e com o rabo entre as patas...

for /l %%r in (1,1,44) do (
echo %%r - %cao%
)

pause>nul