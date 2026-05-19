@echo off
:: Receita_github.bat
:: Projeto: Bolao
:: Atualiza local e GitHub, pede mensagem de commit

:: --- Ajuste o caminho do seu projeto ---
set "PROJ_DIR=D:\Projetos\Bolao"
:: ---------------------------------------

cd /d "%PROJ_DIR%"

echo.
echo 1) Baixando alteracoes do GitHub...
git pull origin main

echo.
echo 2) Se voce alterou no LOCAL, salve o arquivo bolao.html
echo    depois pressione ENTER para continuar.
pause

echo.
echo 3) Adicionando alteracoes...
git add .

echo.
:: Aqui ele obrigatoriamente pede o texto
set /p MSG="Digite a mensagem do commit: "
if "%MSG%"=="" (
    set "MSG=Commit sem mensagem"
)

echo.
echo    git commit -m "%MSG%"
git commit -m "%MSG%"

echo.
echo 4) Enviando para o GitHub...
git push origin main

echo.
echo -------------------- OK ---------------------
echo Projeto Bolao: local <-> GitHub atualizado.
echo.
pause