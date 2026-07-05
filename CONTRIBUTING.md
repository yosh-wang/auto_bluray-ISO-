# 🤝 贡献指南

感谢您对 **auto_bluray** 项目的关注与支持！我们欢迎每一位开发者的参与，无论是报告问题、提出建议，还是提交代码改进。

在参与贡献之前，请花几分钟阅读以下指南，以确保协作流程顺畅高效。

---

> ⚠️ **非商业使用声明**
>
> 本项目仅供**个人学习、研究和非商业用途**使用，**严禁任何形式的商业使用**。
> 向本项目提交贡献即表示您同意您的贡献将按照本项目的许可证进行授权。
> 详见 [LICENSE.md](LICENSE.md)。

---

## 📋 目录

- [行为准则](#行为准则)
- [如何贡献](#如何贡献)
  - [报告 Bug](#报告-bug)
  - [提出新功能](#提出新功能)
  - [提交代码](#提交代码)
  - [改进文档](#改进文档)
- [贡献者许可](#贡献者许可)
- [开发环境](#开发环境)
- [代码规范](#代码规范)
- [提交规范](#提交规范)
- [Pull Request 流程](#pull-request-流程)
- [获取帮助](#获取帮助)

---

## 📜 行为准则

本项目遵循 [贡献者公约](CODE_OF_CONDUCT.md)。参与即表示您同意遵守其条款，共同维护一个开放、友好、包容的社区环境。

---

## 🚀 如何贡献

### 🐛 报告 Bug

如果您发现了 Bug，请通过 [Issues](https://github.com/yosh-wang/auto_bluray-ISO-/issues) 提交报告。

**提交前请确认：**

- ✅ 已搜索现有 Issue，确保未被重复提交
- ✅ 已更新到最新版本，确认问题仍然存在
- ✅ 问题可稳定复现

**Issue 模板：**

```markdown
### 问题描述
清晰简洁地描述问题是什么。

### 复现步骤
1. 执行操作 A
2. 执行操作 B
3. 出现错误 C

### 预期行为
描述您期望发生的结果。

### 实际行为
描述实际发生的结果。

### 环境信息
- 操作系统：[例如 Windows 11 / macOS 14 / Ubuntu 22.04]
- mpv 版本：[例如 v0.37.0]
- 脚本版本：[例如 v3.0.0]

### 日志/截图
如有必要，请附上相关日志或截图。
```

---

### 💡 提出新功能

如果您有好的想法或功能建议，也请通过 [Issues](https://github.com/yosh-wang/auto_bluray-ISO-/issues) 提交。

**请务必说明：**

- 🎯 该功能解决什么痛点
- 💭 功能的使用场景
- 🧩 可能的实现思路（如有）

---

### 💻 提交代码

#### 1. Fork 仓库

点击 GitHub 页面右上角的 **Fork** 按钮，将本仓库复制到您的账号下。

#### 2. 克隆到本地

```bash
git clone https://github.com/您的用户名/auto_bluray-ISO-.git
cd auto_bluray-ISO-
```

#### 3. 创建分支

请基于 `main` 分支创建您的特性分支：

```bash
git checkout -b feature/您的功能名称
# 或
git checkout -b fix/您修复的问题
```

**分支命名规范：**

| 类型 | 命名示例 |
|:---|:---|
| 新功能 | `feature/bluray-menu-support` |
| Bug 修复 | `fix/iso-detection-error` |
| 文档改进 | `docs/update-readme` |
| 性能优化 | `perf/cache-optimization` |

#### 4. 编写代码

进行您的修改，并确保代码符合项目规范（见下方[代码规范](#代码规范)）。

#### 5. 测试验证

在提交前，请务必测试您的修改：

```bash
# 将脚本放入 mpv 的 scripts 目录
# 用不同 ISO 文件进行播放测试
# 确保未影响普通视频文件的播放
```

#### 6. 提交更改

```bash
git add .
git commit -m "类型: 简短描述"
```

提交信息请遵循[提交规范](#提交规范)。

#### 7. 推送到远程

```bash
git push origin feature/您的功能名称
```

#### 8. 发起 Pull Request

前往原始仓库，点击 **New Pull Request**，选择您的分支并提交。

---

### 📝 改进文档

文档与代码同样重要！如果您发现：

- 文档有错别字或语法错误
- 说明不够清晰
- 缺少示例或使用场景
- 翻译不准确

欢迎直接提交 Pull Request 或 Issue。

---

## 📄 贡献者许可

向本项目提交贡献（包括但不限于代码、文档、建议等）即表示您同意：

1. 您的贡献将按照**本项目的许可证（非商业使用许可）** 进行授权
2. 您有权授予此许可（即您拥有贡献内容的版权，或已获得授权）
3. 您同意您的贡献**不会被用于任何商业目的**
4. 您同意在贡献中放弃任何"精神权利"或类似权利（在法律允许的范围内）

如有商业使用需求，请先获得版权所有者的书面授权。

---

## 🛠️ 开发环境

本项目为纯 Lua 脚本，无需复杂的环境配置。

### 推荐工具

| 工具 | 用途 |
|:---|:---|
| **VS Code** + **Lua 扩展** | 代码编辑与语法高亮 |
| **mpv 最新版** | 本地测试运行 |
| **蓝光 ISO 样本** | 功能验证 |

### 测试步骤

1. 将修改后的 `auto_bluray.lua` 放入 mpv 的 `scripts` 目录
2. 重启 mpv
3. 拖拽或双击 `.iso` 文件进行测试
4. 确认播放正常，菜单/章节/音轨切换正常

---

## 📐 代码规范

为确保代码一致性和可维护性，请遵循以下规范：

### 命名风格

```lua
-- ✅ 变量/函数：蛇形命名法
local file_path = "/path/to/file.iso"
local function is_iso_file(path) end

-- ✅ 常量：全大写
local BLURAY_PROTOCOL = "bluray://"

-- ❌ 避免驼峰命名
local filePath = "/path/to/file.iso"  -- 不推荐
```

### 代码格式

```lua
-- ✅ 使用 4 空格缩进
function process_file(path)
    if path then
        return true
    end
end

-- ✅ 运算符两侧加空格
local result = a + b * c

-- ✅ 适当添加注释
-- 检测文件是否为 ISO 格式
-- @param path string 文件路径
-- @return boolean 是否为 ISO 文件
```

### 最佳实践

- 保持函数简短，单一职责
- 避免硬编码，使用配置或常量
- 添加适当的错误处理
- 保持与现有代码风格一致

---

## 📝 提交规范

提交信息格式：

```
<类型>: <简短描述>

[可选] 详细说明
[可选] 关联 Issue: #123
```

**类型说明：**

| 类型 | 说明 |
|:---|:---|
| `feat` | 新功能 |
| `fix` | Bug 修复 |
| `docs` | 文档更新 |
| `style` | 代码风格（不影响功能） |
| `refactor` | 重构（非 Bug 修复/功能添加） |
| `perf` | 性能优化 |
| `test` | 测试相关 |
| `chore` | 构建/工具链相关 |

**示例：**

```bash
git commit -m "feat: 支持蓝光菜单导航"
git commit -m "fix: 修复特定 ISO 文件无法识别的问题"
git commit -m "docs: 更新安装路径说明"
git commit -m "refactor: 优化文件检测逻辑"
```

---

## 🔄 Pull Request 流程

1. **确保 PR 聚焦单一主题** — 不要混合多个不相关的修改
2. **关联相关 Issue** — 在 PR 描述中提及 `Closes #123`
3. **提供清晰的描述** — 说明改了什么、为什么改、如何测试
4. **保持分支同步** — 及时合并 `main` 分支的最新更改
5. **响应 Code Review** — 积极回复评审意见，及时修改

### PR 描述模板

```markdown
### 变更内容
简要说明本次 PR 修改了什么。

### 关联 Issue
Closes #123

### 测试方式
1. 在 Windows/macOS/Linux 环境下测试
2. 测试了 X 个 ISO 文件
3. 验证了普通视频文件不受影响

### 截图（如有）
...
```

---

## ❓ 获取帮助

如果您在贡献过程中遇到任何问题：

- 📖 查看 [项目 README](README.md)
- 💬 在 [Issues](https://github.com/yosh-wang/auto_bluray-ISO-/issues) 中提问
- ✉️ 联系项目维护者

---

## 🌟 贡献者

感谢所有为本项目做出贡献的朋友们！

<a href="https://github.com/yosh-wang/auto_bluray-ISO-/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=yosh-wang/auto_bluray-ISO-" />
</a>

---

<p align="center">
  <sub>感谢您花时间贡献！每一份努力都让这个项目变得更好 ❤️</sub>
</p>

<p align="center">
  <sub>⭐ 觉得好用？给项目点个 Star 吧！</sub>
</p>
