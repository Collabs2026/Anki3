# 📱 AnkiFlow 安卓安装包 (APK) 最新完整打包工程 (v1.3.0)

本压缩包内含已去除模拟手机黑框、默认适配安卓原生全屏显示的最新版 **AnkiFlow** 源码 (`www/index.html`) 以及全自动云端/本地打包配置。

### ✨ 本次最新版包含的全部功能
1. **牌组管理（新建 / 编辑 / 删除）**：支持自定义牌组 Emoji 图标、名称、简介，删除牌组时带有防误触确认弹窗。
2. **沉浸式滑动复习 & 随时编辑**：支持左滑「重来 (Again)」、右滑「良好 (Good)」，复习中途点击卡片右上角 `✏️ 编辑` 可原地修改内容并立即生效。
3. **卡片库按牌组分类 & 折叠**：支持顶部牌组横向筛选胶囊、按牌组分组折叠视图、以及状态筛选（新卡/学习中/复习中/收藏）。
4. **卡片点击预览大弹窗**：在卡片库中轻触任意卡片即可弹出完整预览面板，查看完整问题/答案/助记笔记/SM-2 参数，支持填空卡 `🙈 遮挡挖空 / 👁️ 显示答案` 切换、中英双语朗读，以及 `◀ 上一张 / 下一张 ▶` 快速翻阅。

---

## 方法一：使用 GitHub Actions 云端免配置自动编译 APK（最推荐）

### 情况 A：如果你之前已经在 GitHub 建好了仓库
只需替换 `www/index.html` 一个文件即可自动重新打包：
1. 解压本压缩包，找到里面的 `www/index.html` 文件。
2. 打开你的 GitHub 仓库 → 进入 `www` 文件夹 → 点击右上角 `Add file` → `Upload files`。
3. 将最新的 `www/index.html` 拖入上传，点击底部绿色按钮 **Commit changes**。
4. 点击仓库顶部的 **Actions** 标签页，等待约 2 分钟工作流变为绿色对勾 ✅，点进去滑到最下方 **Artifacts** 区域，点击 **`AnkiFlow-Android-APK`** 即可下载最新 `.apk` 安装包！

### 情况 B：如果你要新建一个 GitHub 仓库从头打包
1. 解压本压缩包。
2. 在 GitHub 新建一个仓库，把解压出来的 **`www` 文件夹、`capacitor.config.json`、`package.json`** 上传并 Commit。
3. 点击顶部 **Actions** → **set up a workflow yourself**，将解压包内 `.github/workflows/build-apk.yml` 的内容复制粘贴进去，点击右上角 **Commit changes**。
4. 等待 Actions 编译完成后，在任务详情页底部的 **Artifacts** 处下载 **`AnkiFlow-Android-APK`**。

---

## 方法二：本地电脑一键编译 APK（Windows / macOS / Linux）

如果你的电脑安装了 Node.js 与 Android SDK / Android Studio：
- **Windows 用户**：解压后直接双击运行 `build_apk.bat`
- **macOS / Linux 用户**：在终端进入解压目录，执行 `./build_apk.sh`

编译完成后，安装包输出路径为：
`android/app/build/outputs/apk/debug/app-debug.apk`
