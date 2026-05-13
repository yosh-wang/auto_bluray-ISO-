---

# 🎬 mpv 蓝光 ISO 自动播放脚本

<!-- 第一行：社交互动核心指标 -->
[![GitHub stars](https://img.shields.io/github/stars/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-/forks)
[![GitHub watchers](https://img.shields.io/github/watchers/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-/watchers)

<!-- 第二行：项目数据徽章 -->
[![GitHub Repo stars](https://img.shields.io/github/stars/yosh-wang/auto_bluray-ISO-?style=flat-square)](https://github.com/yosh-wang/auto_bluray-ISO-/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/yosh-wang/auto_bluray-ISO-?style=flat-square)](https://github.com/yosh-wang/auto_bluray-ISO-/forks)
[![GitHub issues](https://img.shields.io/github/issues/yosh-wang/auto_bluray-ISO-?style=flat-square)](https://github.com/yosh-wang/auto_bluray-ISO-/issues)
[![GitHub watchers](https://img.shields.io/github/watchers/yosh-wang/auto_bluray-ISO-?style=flat-square)](https://github.com/yosh-wang/auto_bluray-ISO-/watchers)
[![GitHub contributors](https://img.shields.io/github/contributors/yosh-wang/auto_bluray-ISO-?style=flat-square)](https://github.com/yosh-wang/auto_bluray-ISO-/graphs/contributors)
[![GitHub license](https://img.shields.io/github/license/yosh-wang/auto_bluray-ISO-?style=flat-square)](https://github.com/yosh-wang/auto_bluray-ISO-/blob/main/LICENSE)

<!-- 第三行：版本发布与下载统计 -->
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-/releases/latest)
[![GitHub tag](https://img.shields.io/github/v/tag/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-/tags)
[![GitHub release date](https://img.shields.io/github/release-date/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-/releases)
[![GitHub downloads (latest)](https://img.shields.io/github/downloads/yosh-wang/auto_bluray-ISO-/latest/total?cacheSeconds=300)](https://github.com/yosh-wang/auto_bluray-ISO-/releases/latest)
[![GitHub downloads](https://img.shields.io/github/downloads/yosh-wang/auto_bluray-ISO-/total)](https://github.com/yosh-wang/auto_bluray-ISO-/releases)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/yosh-wang/auto_bluray-ISO-/blob/main/LICENSE)

<!-- 第四行：提交活动与贡献者 -->
[![GitHub last commit](https://img.shields.io/github/last-commit/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-/commits/main)
[![GitHub commit activity (monthly)](https://img.shields.io/github/commit-activity/m/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-/commits/main)
[![GitHub commit activity (weekly)](https://img.shields.io/github/commit-activity/w/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-/commits/main)
[![GitHub commit activity (yearly)](https://img.shields.io/github/commit-activity/y/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-/commits/main)
[![GitHub contributors](https://img.shields.io/github/contributors/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-/graphs/contributors)
[![GitHub contributors (anon)](https://img.shields.io/github/contributors-anon/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-/graphs/contributors)

<!-- 第五行：代码信息与技术栈 -->
[![GitHub top language](https://img.shields.io/github/languages/top/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-)
[![GitHub language count](https://img.shields.io/github/languages/count/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-)
[![GitHub repo size](https://img.shields.io/github/repo-size/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-)
[![GitHub code size](https://img.shields.io/github/languages/code-size/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-)
[![GitHub file count](https://img.shields.io/github/directory-file-count/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-)
[![Lines of Code](https://img.shields.io/tokei/lines/github/yosh-wang/auto_bluray-ISO-)](https://github.com/yosh-wang/auto_bluray-ISO-)

<!-- 第六行：自定义静态徽章 -->
![Status](https://img.shields.io/badge/Status-Stable-brightgreen)
![Maintained](https://img.shields.io/badge/Maintained-Yes-brightgreen)
![MPV](https://img.shields.io/badge/MPV-Player-blue)
![Language](https://img.shields.io/badge/Language-Lua-red)
![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20macOS%20%7C%20Linux-lightgrey)
![Feature](https://img.shields.io/badge/Feature-ISO%20Auto%20Play-brightgreen)
![Bluray](https://img.shields.io/badge/Bluray-Supported-blue)

## 📖 项目简介

**将 ISO 文件直接拖入 mpv 窗口即可自动播放蓝光原盘，无需命令行。**

| 项目 | 信息 |

|------|------|
| 脚本文件 | `auto_bluray.lua` |
| 功能 | 自动检测 ISO 文件，切换蓝光模式播放 |
| 安装方式 | 放入 `scripts` 文件夹 |
| 使用方式 | 拖拽或双击 ISO 文件 |

## ✨ 特性

| 特性 | 说明 |

|------|------|
| 🎯 拖拽即播 | 直接把 `.iso` 文件拖进 mpv 窗口 |
| 💾 双击即播 | 将 mpv 设为 ISO 默认程序后，双击即可 |
| 🔍 自动识别 | 只对 ISO 文件生效，不影响其他视频 |
| ⚡ 轻量无感 | 单个 Lua 脚本，零配置 |
| 🧠 智能拦截 | 在 mpv 加载文件前自动切换为蓝光协议 |

## 📥 安装

### 1️⃣ 确定脚本目录

| mpv 版本 | 路径 |
|----------|------|
| 便携版 | `mpv.exe` 所在目录下的 `portable_config/scripts/` |
| 安装版 | `%APPDATA%\mpv\scripts\` |
| macOS/Linux | `~/.config/mpv/scripts/` |

### 2️⃣ 安装本脚本

将 `auto_bluray.lua` 放入上述 `scripts` 文件夹。

### 3️⃣ 重启 mpv

完全退出 mpv 后重新打开。

## 🎮 使用

- **拖拽播放**：将 `.iso` 文件拖到 mpv 窗口
- **双击播放**：右键 `.iso` 文件 → 打开方式 → 选择 mpv → 勾选「始终使用此应用」

## 🔧 脚本代码
- **仓库下载**
