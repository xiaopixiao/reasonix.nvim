# 🧠 reasonix.nvim

A Neovim plugin to integrate [Reasonix](https://github.com/esengine/DeepSeek-Reasonix) CLI in a side terminal, inspired by [claudecode.nvim](https://github.com/coder/claudecode.nvim).

---

## ✨ Features

- Opens Reasonix CLI in a **right-side terminal** via snacks.nvim
- One-key toggle with \`<leader>rs\`
- Fully configurable — position, width, command, and terminal options
- Minimal and dependency-light (only requires \`folke/snacks.nvim\`)

## 📦 Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "xiaopixiao/reasonix.nvim",
  dependencies = { "folke/snacks.nvim" },
  opts = {},
  keys = {
    { "<leader>rs", "<cmd>Reasonix<cr>", desc = "[R]easonix [S]tart" },
  },
}
```

### [mini.deps](https://github.com/echasnovski/mini.deps) / packer / paq

Require `reasonix.setup(opts)` after adding to your plugin manager.

## ⚙️ Configuration

**Defaults:**

```lua
require("reasonix").setup({
  terminal = {
    command = "reasonix",
    win = {
      position = "right",  -- side panel position
      width = 0.3,          -- 30%% of editor width
    },
    env = { TERM = "xterm-256color" },
    start_insert = true,
    auto_insert = true,
  },
})
```

## ⌨️ Usage

| Key | Command | Description |
|-----|---------|-------------|
| `<leader>rs` | `:Reasonix` | Toggle Reasonix terminal |
| `:Reasonix` | — | Same, from command line |

## 📁 Structure

```
reasonix.nvim/
├── lua/
│   └── reasonix/
│       └── init.lua    # Plugin entry point
├── README.md
└── LICENSE
```

## 📝 License

MIT

---

# 🧠 reasonix.nvim

一款在侧边终端中集成 [Reasonix](https://github.com/esengine/DeepSeek-Reasonix) CLI 的 Neovim 插件，灵感来自 [claudecode.nvim](https://github.com/coder/claudecode.nvim)。

---

## ✨ 功能特性

- 在**右侧终端**中启动 Reasonix CLI（基于 snacks.nvim）
- 一键开关：`<leader>rs`
- 完全可配置 — 位置、宽度、命令、终端选项
- 轻量依赖（仅需 `folke/snacks.nvim`）

## 📦 安装

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "xiaopixiao/reasonix.nvim",
  dependencies = { "folke/snacks.nvim" },
  opts = {},
  keys = {
    { "<leader>rs", "<cmd>Reasonix<cr>", desc = "[R]easonix [S]tart" },
  },
}
```

## ⚙️ 配置

**默认值:**

```lua
require("reasonix").setup({
  terminal = {
    command = "reasonix",
    win = {
      position = "right",  -- 侧边栏位置
      width = 0.3,          -- 编辑器宽度的 30%%
    },
    env = { TERM = "xterm-256color" },
    start_insert = true,
    auto_insert = true,
  },
})
```

## ⌨️ 使用方法

| 按键 | 命令 | 说明 |
|------|------|------|
| `<leader>rs` | `:Reasonix` | 开关 Reasonix 终端 |
| `:Reasonix` | — | 同上，命令行方式 |

## 📁 项目结构

```
reasonix.nvim/
├── lua/
│   └── reasonix/
│       └── init.lua    # 插件入口
├── README.md
└── LICENSE
```

## 📝 许可证

MIT
