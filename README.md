# Kindle Browser User-Agent Modifier

<p align="center">
  <img src="https://img.shields.io/badge/Kindle-Modification-orange?style=for-the-badge&logo=amazon" alt="Kindle">
  <img src="https://img.shields.io/badge/Firmware-5.16.4+-green?style=for-the-badge" alt="Firmware">
  <img src="https://img.shields.io/badge/Shell-Script-bash?style=for-the-badge&logo=gnu-bash" alt="Shell">
  <img src="https://img.shields.io/badge/License-MIT-blue?style=for-the-badge" alt="License">
</p>

<p align="center">
  <a href="#kindle-browser-user-agent-modifier">English</a> | <a href="#kindle-浏览器-user-agent-修改器">简体中文</a>
</p>

A simple KUAL extension to modify the Kindle built-in browser's User-Agent, allowing you to access desktop versions of websites.

> [!NOTE]
> This tool is only compatible with **Kindle Firmware 5.16.4 and above**, as Amazon switched to a **Chromium-based** browser engine starting from this version.

## ✨ Features

- 🖥️ **Desktop Mode**: Change UA to Windows 10 Edge to bypass mobile redirections.
- 🔄 **One-click Restore**: Easily revert to the original Kindle User-Agent.
- 🔍 **Status Check**: View current UA type directly on your Kindle screen.
- 🛠️ **KUAL Integrated**: Seamlessly works with Kindle Unified Application Launcher.

## 🚀 Installation

1. Ensure your Kindle is jailbroken and has **KUAL** installed.
2. Connect your Kindle to your computer via USB.
3. Copy the `modify-browserUA` folder into the `extensions` directory on your Kindle.
4. Eject the Kindle and open KUAL.
5. Navigate to `modify browserUA` and select your desired action.

> [!IMPORTANT]
> Modifying system files requires `mntroot rw`. The script will automatically reboot your Kindle after applying changes to ensure they take effect.

## 📖 Usage

- **Change to Desktop UA**: Modifies `/usr/bin/browser` and reboots.
- **Status**: Displays whether you are using the modified or original UA.
- **Restore**: Reverts changes and reboots.

---

# Kindle 浏览器 User-Agent 修改器

这是一个简单的 KUAL 插件，用于修改 Kindle 内置浏览器的 User-Agent (UA)，让你能够访问网页的桌面版。

> [!NOTE]
> 本工具仅适用于 **Kindle 固件版本 5.16.4 及以上**。因为从该版本开始，Kindle 浏览器切换到了 **Chromium** 内核。

## ✨ 功能特性

- 🖥️ **桌面模式**: 将 UA 修改为 Windows 10 Edge，避免网页强制跳转到移动版。
- 🔄 **一键还原**: 轻松恢复 Kindle 原始 User-Agent。
- 🔍 **状态查询**: 直接在 Kindle 屏幕上查看当前 UA 类型。
- 🛠️ **KUAL 集成**: 完美适配 Kindle Unified Application Launcher。

## 🚀 安装步骤

1. 确保你的 Kindle 已越狱并安装了 **KUAL**。
2. 通过 USB 将 Kindle 连接到电脑。
3. 将 `modify-browserUA` 文件夹复制到 Kindle 根目录下的 `extensions` 文件夹中。
4. 弹出 Kindle 并打开 KUAL。
5. 找到 `modify browserUA` 菜单并选择相应操作。

> [!IMPORTANT]
> 修改系统文件需要 `mntroot rw` 权限。脚本在应用更改后会自动重启 Kindle 以使设置生效。

## 📖 使用说明

- **Change to Desktop UA**: 修改 `/usr/bin/browser` 并重启。
- **Status**: 显示当前使用的是修改后的 UA 还是原始 UA。
- **Restore**: 还原更改并重启。

## 📄 License

[MIT](LICENSE)

