@echo off
setlocal
cd /d "%~dp0"

echo ========================================
echo DawnNav 管理工具启动中...
echo ========================================

if not exist node_modules (
    echo 正在首次安装依赖，请稍候...
    call npm install
    if errorlevel 1 (
        echo.
        echo 依赖安装失败，请检查 Node.js 和网络后重试。
        pause
        exit /b 1
    )
)

call npm run admin

echo.
echo 管理工具已退出。
pause