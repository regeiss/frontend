@echo off
echo 🔧 Iniciando diagnóstico do Build Runner...
echo ================================================

REM 1. Verificar se Flutter está instalado
echo 1. Verificando Flutter...
flutter --version >nul 2>&1
if %errorlevel% == 0 (
    flutter --version | findstr "Flutter"
) else (
    echo ❌ Flutter não encontrado. Instale o Flutter primeiro.
    pause
    exit /b 1
)

REM 2. Verificar pubspec.yaml
echo.
echo 2. Verificando dependências...
if exist pubspec.yaml (
    echo ✅ pubspec.yaml encontrado
    
    findstr /C:"build_runner:" pubspec.yaml >nul && echo ✅ build_runner encontrado || echo ❌ build_runner não encontrado
    findstr /C:"freezed:" pubspec.yaml >nul && echo ✅ freezed encontrado || echo ❌ freezed não encontrado
    findstr /C:"json_serializable:" pubspec.yaml >nul && echo ✅ json_serializable encontrado || echo ❌ json_serializable não encontrado
    findstr /C:"drift_dev:" pubspec.yaml >nul && echo ✅ drift_dev encontrado || echo ❌ drift_dev não encontrado
) else (
    echo ❌ pubspec.yaml não encontrado
    pause
    exit /b 1
)

REM 3. Limpar cache
echo.
echo 3. Limpando cache...
flutter clean
dart pub get

REM 4. Remover arquivos gerados
echo.
echo 4. Removendo arquivos gerados anteriores...
for /r %%i in (*.g.dart) do del "%%i" 2>nul
for /r %%i in (*.freezed.dart) do del "%%i" 2>nul
for /r %%i in (*.config.dart) do del "%%i" 2>nul
echo ✅ Arquivos gerados removidos

REM 5. Verificar problemas
echo.
echo 5. Verificando arquivos com problemas...
if exist "lib\features\auth\presentation\domain\entities\user.dart" (
    findstr /C:"toJson() {}" "lib\features\auth\presentation\domain\entities\user.dart" >nul && (
        echo ❌ user.dart tem método toJson() vazio - precisa ser corrigido
    ) || (
        echo ✅ user.dart parece correto
    )
)

REM 6. Executar build runner
echo.
echo 6. Executando build runner...
echo Tentativa 1: Build básico
dart run build_runner build

if %errorlevel% == 0 (
    echo ✅ Build runner executou com sucesso!
) else (
    echo ❌ Build runner falhou. Tentando com --delete-conflicting-outputs...
    dart run build_runner build --delete-conflicting-outputs
    
    if %errorlevel% == 0 (
        echo ✅ Build runner executou com sucesso na segunda tentativa!
    ) else (
        echo ❌ Build runner falhou novamente.
        echo.
        echo 7. Executando análise do código...
        dart analyze --fatal-infos
        
        if %errorlevel% == 0 (
            echo ✅ Análise do código passou
        ) else (
            echo ❌ Existem erros de análise que precisam ser corrigidos primeiro
        )
    )
)

REM 8. Verificar arquivos gerados
echo.
echo 8. Verificando arquivos gerados...
if exist "lib\core\database\database.g.dart" (
    echo ✅ database.g.dart gerado
) else (
    echo ❌ database.g.dart não foi gerado
)

echo.
echo ================================================
echo 🎯 Diagnóstico concluído!
echo Se ainda houver problemas, verifique os logs acima
echo e corrija os erros antes de tentar novamente.
pause