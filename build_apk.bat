@echo off
chcp 65001 >nul
echo ====================================================
echo 🚀 AnkiFlow Android APK 一键打包脚本 (Windows)
echo ====================================================

where npm >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ 未检测到 Node.js / npm，请先安装 Node.js: https://nodejs.org/
    pause
    exit /b 1
)

echo 📦 [1/4] 正在安装 Capacitor 依赖...
call npm install

if not exist "android" (
    echo 🤖 [2/4] 正在生成 Android 原生工程目录...
    call npx cap add android
)

echo 🔄 [3/4] 正在将 www/ 最新界面同步至 Android 工程...
call npx cap sync android

echo 🔨 [4/4] 正在调用 Gradle 编译 APK 安装包...
cd android
call gradlew.bat assembleDebug

echo.
echo ✅ 编译成功！你的安卓安装包位于：
echo 👉 android\app\build\outputs\apk\debug\app-debug.apk
pause
