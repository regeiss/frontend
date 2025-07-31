@echo off
echo ===============================================
echo     DIAGNOSTICO COMPLETO - DATABASE.G.DART
echo ===============================================
echo.

echo [1] Verificando arquivos .g.dart existentes...
echo.
for /r %%i in (*.g.dart) do (
    echo ENCONTRADO: %%i
    echo Tamanho: %%~zi bytes
    echo Modificado: %%~ti
    echo.
)

echo.
echo [2] Procurando especificamente database.g.dart...
if exist "lib\core\database\database.g.dart" (
    echo ✅ ENCONTRADO: lib\core\database\database.g.dart
    dir "lib\core\database\database.g.dart"
) else (
    echo ❌ NAO ENCONTRADO: lib\core\database\database.g.dart
)

echo.
echo [3] Verificando estrutura da pasta database...
if exist "lib\core\database" (
    echo ✅ Pasta lib\core\database existe
    echo Conteudo:
    dir "lib\core\database"
) else (
    echo ❌ Pasta lib\core\database NAO existe
)

echo.
echo [4] Verificando arquivo database.dart...
if exist "lib\core\database\database.dart" (
    echo ✅ database.dart existe
    echo Primeiras linhas:
    type "lib\core\database\database.dart" | more +1 | head -10
) else (
    echo ❌ database.dart NAO existe
)

echo.
echo [5] Verificando .gitignore...
if exist ".gitignore" (
    echo Verificando se *.g.dart esta sendo ignorado:
    findstr /i "*.g.dart" .gitignore
    if %errorlevel% equ 0 (
        echo ⚠️ AVISO: *.g.dart esta no .gitignore
    ) else (
        echo ✅ *.g.dart NAO esta sendo ignorado
    )
) else (
    echo ❌ .gitignore nao encontrado
)

echo.
echo [6] Tentando gerar novamente...
echo Executando: dart run build_runner build --delete-conflicting-outputs
dart run build_runner build --delete-conflicting-outputs

echo.
echo [7] Verificacao final...
if exist "lib\core\database\database.g.dart" (
    echo ✅ SUCCESS: database.g.dart foi gerado!
    dir "lib\core\database\database.g.dart"
    echo.
    echo Primeiras linhas do arquivo:
    type "lib\core\database\database.g.dart" | more +1 | head -5
) else (
    echo ❌ ERRO: database.g.dart ainda NAO foi gerado
    echo.
    echo Possíveis causas:
    echo 1. Erro na definicao das tabelas
    echo 2. Problema na configuracao do build.yaml
    echo 3. Arquivo sendo gerado em local diferente
    echo 4. Problema com dependencias
)

echo.
echo ===============================================
echo               DIAGNOSTICO CONCLUIDO
echo ===============================================
pause