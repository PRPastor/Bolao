@echo off
:: -------------------------------
:: Script: Receita_github.bat
:: Finalidade: atualizar local e GitHub
:: Projeto: Bolao
:: Paulo Roberto Pastorelli
:: -------------------------------

setlocal

set "PROJ_DIR=D:\Projetos\Bolao"

if not exist "%PROJ_DIR%" (
    echo.
    echo ERRO: Pasta do projeto nao encontrada:
    echo %PROJ_DIR%
    echo.
    pause
    exit /b 1
)

cd /d "%PROJ_DIR%"

:: ----------------------------------------
:: 1) Baixa alteracoes do GitHub
:: ----------------------------------------
echo.
echo >>> 1) Baixando alteracoes do GitHub...
echo    (git pull origin main)
echo.

git pull origin main

if errorlevel 1 (
    echo ERRO ao fazer git pull.
    echo Verifique conexao com o GitHub e suas credenciais/SSH.
    echo.
    pause
    exit /b 1
)

:: ----------------------------------------
:: 2) Se voce alterou no LOCAL
:: ----------------------------------------
echo.
echo >>> 2) Se voce alterou no LOCAL:
echo    1) Salve o arquivo bolao.html no editor.
echo    2) Pressione ENTER quando estiver pronto para enviar.
echo.

pause

git status
