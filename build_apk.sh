#!/usr/bin/env bash
set -e
echo "===================================================="
echo "🚀 AnkiFlow Android APK 一键打包脚本 (macOS / Linux)"
echo "===================================================="

if ! command -v npm >/dev/null 2>&1; then
  echo "❌ 未检测到 Node.js / npm，请先安装 Node.js (https://nodejs.org/)"
  exit 1
fi

echo "📦 [1/4] 正在安装 Capacitor 依赖..."
npm install

if [ ! -d "android" ]; then
  echo "🤖 [2/4] 正在生成 Android 原生工程目录..."
  npx cap add android
fi

echo "🔄 [3/4] 正在将 www/ 最新界面同步至 Android 工程..."
npx cap sync android

echo "🔨 [4/4] 正在调用 Gradle 编译 APK 安装包..."
cd android
chmod +x gradlew
./gradlew assembleDebug

echo ""
echo "✅ 编译成功！你的安卓安装包位于："
echo "👉 android/app/build/outputs/apk/debug/app-debug.apk"
