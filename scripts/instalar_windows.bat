@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

echo.
echo ╔══════════════════════════════════════════════════════╗
echo ║       ROYAL MATCH BOT  —  Instalador v2.0           ║
echo ║              Windows                                 ║
echo ╚══════════════════════════════════════════════════════╝
echo.

:: ── Verifica Python ──────────────────────────────────────────
echo [1/5] Verificando Python 3.9+...
python --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo   ERRO: Python nao encontrado.
    echo   Baixe em: https://python.org/downloads
    pause
    exit /b 1
)
for /f "tokens=2" %%v in ('python --version 2^>^&1') do set PY_VER=%%v
echo   OK: Python %PY_VER%

:: ── Ambiente virtual ─────────────────────────────────────────
echo [2/5] Criando ambiente virtual...
set VENV=%USERPROFILE%\.royalmatch_bot\venv
if not exist "%VENV%" (
    python -m venv "%VENV%"
)
call "%VENV%\Scripts\activate.bat"
echo   OK: Ambiente virtual criado.

:: ── Dependências ─────────────────────────────────────────────
echo [3/5] Instalando dependencias Python...
pip install --upgrade pip -q
pip install -r "%~dp0..\requirements.txt" -q
echo   OK: Dependencias instaladas.

:: ── ADB ──────────────────────────────────────────────────────
echo [4/5] Verificando ADB...
adb version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo   AVISO: ADB nao encontrado.
    echo   Baixe em: https://developer.android.com/studio/releases/platform-tools
    echo   Extraia e adicione ao PATH do sistema.
) else (
    echo   OK: ADB encontrado.
)

:: ── Atalho na Área de Trabalho ───────────────────────────────
echo [5/5] Criando atalho...
set SCRIPT_DIR=%~dp0..
set LAUNCHER=%USERPROFILE%\.royalmatch_bot\iniciar_bot.bat

(
echo @echo off
echo call "%VENV%\Scripts\activate.bat"
echo cd /d "%SCRIPT_DIR%"
echo python -m royalmatch_bot.ui.app
echo pause
) > "%LAUNCHER%"

:: Atalho na área de trabalho via PowerShell
powershell -Command ^
  "$ws = New-Object -ComObject WScript.Shell; ^
   $lnk = $ws.CreateShortcut('%USERPROFILE%\Desktop\Royal Match Bot.lnk'); ^
   $lnk.TargetPath = '%LAUNCHER%'; ^
   $lnk.IconLocation = 'shell32.dll,43'; ^
   $lnk.Save()" >nul 2>&1

echo.
echo ╔══════════════════════════════════════════════════════╗
echo ║  INSTALACAO CONCLUIDA!                              ║
echo ╚══════════════════════════════════════════════════════╝
echo.
echo  Para iniciar: clique em "Royal Match Bot" na area de trabalho
echo  ou execute: %LAUNCHER%
echo.
echo  Dica: Ative o Modo Desenvolvedor no celular e conecte via USB
echo  ou configure o IP do dispositivo nas configuracoes do bot.
echo.
pause
