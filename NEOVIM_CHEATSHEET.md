# 🚀 Neovim Configuration Cheatsheet

## 📋 Table of Contents

- [Leader Key](#leader-key)
- [General Navigation](#general-navigation)
- [File Management](#file-management)
- [Buffer Management](#buffer-management)
- [Window Management](#window-management)
- [Tab Management](#tab-management)
- [Search & Find](#search--find)
- [Git Integration](#git-integration)
- [LSP & Code Actions](#lsp--code-actions)
- [Troubleshooting](#troubleshooting)
- [Plugins Overview](#plugins-overview)

---

## 🎯 Leader Key

**Leader Key:** `<Space>` (Space bar)

---

## 🧭 General Navigation

| Key          | Action                  | Description                   |
| ------------ | ----------------------- | ----------------------------- |
| `jk`         | Exit insert mode        | Quick escape from insert mode |
| `<leader>nh` | Clear search highlights | Remove search highlighting    |
| `<leader>+`  | Increment number        | Increase number under cursor  |
| `<leader>-`  | Decrement number        | Decrease number under cursor  |

---

## 📁 File Management

### File Explorer (NvimTree)

| Key          | Action               | Description                   |
| ------------ | -------------------- | ----------------------------- |
| `<leader>ee` | Toggle file explorer | Open/close NvimTree           |
| `<leader>ef` | Find current file    | Open NvimTree at current file |
| `<leader>ec` | Collapse explorer    | Collapse all folders          |
| `<leader>er` | Refresh explorer     | Refresh file tree             |

### File Operations

| Key          | Action     | Description                    |
| ------------ | ---------- | ------------------------------ |
| `<leader>bo` | New buffer | Create new empty buffer        |
| `<leader>bf` | New tab    | Open current buffer in new tab |

---

## 📄 Buffer Management

### Basic Buffer Navigation

| Key           | Action               | Description              |
| ------------- | -------------------- | ------------------------ |
| `<leader>bx`  | Close current buffer | Delete current buffer    |
| `<leader>bn`  | Next buffer          | Go to next buffer        |
| `<leader>bp`  | Previous buffer      | Go to previous buffer    |
| `<leader>ba`  | Close all buffers    | Delete all buffers       |
| `<leader>boo` | Close other buffers  | Keep only current buffer |

### Bufferline Navigation

| Key           | Action          | Description              |
| ------------- | --------------- | ------------------------ |
| `Shift+H`     | Previous buffer | Cycle to previous buffer |
| `Shift+L`     | Next buffer     | Cycle to next buffer     |
| `<leader>1-9` | Go to buffer N  | Jump to buffer by number |
| `<leader>0`   | Last buffer     | Jump to last buffer      |

---

## 🪟 Window Management

| Key          | Action             | Description                |
| ------------ | ------------------ | -------------------------- |
| `<leader>sv` | Split vertically   | Split window vertically    |
| `<leader>sh` | Split horizontally | Split window horizontally  |
| `<leader>se` | Equal splits       | Make splits equal size     |
| `<leader>sx` | Close split        | Close current split window |
| `<leader>sm` | Maximize toggle    | Maximize/minimize split    |

---

## 📑 Tab Management

| Key          | Action       | Description                           |
| ------------ | ------------ | ------------------------------------- |
| `<leader>to` | New tab      | Open new tab                          |
| `<leader>tx` | Close tab    | Close current tab (with safety check) |
| `<leader>tn` | Next tab     | Go to next tab                        |
| `<leader>tp` | Previous tab | Go to previous tab                    |

---

## 🔍 Search & Find

### Telescope (Fuzzy Finder)

| Key          | Action       | Description                            |
| ------------ | ------------ | -------------------------------------- |
| `<leader>ff` | Find files   | Fuzzy find files in current directory  |
| `<leader>fr` | Recent files | Find recently opened files             |
| `<leader>fs` | Live grep    | Search for string in current directory |
| `<leader>fc` | Grep string  | Find string under cursor               |
| `<leader>ft` | Find todos   | Search for TODO comments               |

### Telescope Navigation

| Key      | Action           | Description                          |
| -------- | ---------------- | ------------------------------------ |
| `Ctrl+K` | Previous result  | Move to previous search result       |
| `Ctrl+J` | Next result      | Move to next search result           |
| `Ctrl+Q` | Send to quickfix | Send selected items to quickfix list |

---

## 🔧 Git Integration

### Git Signs

| Key          | Action        | Description                |
| ------------ | ------------- | -------------------------- |
| `]h`         | Next hunk     | Go to next git hunk        |
| `[h`         | Previous hunk | Go to previous git hunk    |
| `<leader>hs` | Stage hunk    | Stage current hunk         |
| `<leader>hr` | Reset hunk    | Reset current hunk         |
| `<leader>hS` | Stage buffer  | Stage entire buffer        |
| `<leader>hR` | Reset buffer  | Reset entire buffer        |
| `<leader>hu` | Undo stage    | Undo last stage operation  |
| `<leader>hp` | Preview hunk  | Preview hunk changes       |
| `<leader>hb` | Blame line    | Show git blame for line    |
| `<leader>hB` | Toggle blame  | Toggle line blame display  |
| `<leader>hd` | Diff this     | Show diff for current file |
| `<leader>hD` | Diff this ~   | Show diff against HEAD~1   |

### LazyGit

| Key          | Action       | Description              |
| ------------ | ------------ | ------------------------ |
| `<leader>lg` | Open LazyGit | Launch LazyGit interface |

---

## 🧠 LSP & Code Actions

### LSP Navigation

| Key  | Action                | Description                   |
| ---- | --------------------- | ----------------------------- |
| `gR` | Show references       | Show all references to symbol |
| `gD` | Go to declaration     | Jump to symbol declaration    |
| `gd` | Show definitions      | Show symbol definitions       |
| `gi` | Show implementations  | Show symbol implementations   |
| `gt` | Show type definitions | Show type definitions         |
| `K`  | Hover documentation   | Show documentation for symbol |

### LSP Actions

| Key          | Action        | Description                 |
| ------------ | ------------- | --------------------------- |
| `<leader>ca` | Code actions  | Show available code actions |
| `<leader>rn` | Rename symbol | Smart rename symbol         |
| `<leader>rs` | Restart LSP   | Restart language server     |

### Diagnostics

| Key         | Action              | Description                       |
| ----------- | ------------------- | --------------------------------- |
| `<leader>D` | Buffer diagnostics  | Show diagnostics for current file |
| `<leader>d` | Line diagnostics    | Show diagnostics for current line |
| `[d`        | Previous diagnostic | Jump to previous diagnostic       |
| `]d`        | Next diagnostic     | Jump to next diagnostic           |

---

## 🐛 Troubleshooting

### Trouble (Diagnostics Panel)

| Key          | Action                | Description                |
| ------------ | --------------------- | -------------------------- |
| `<leader>xw` | Workspace diagnostics | Open workspace diagnostics |
| `<leader>xd` | Document diagnostics  | Open document diagnostics  |
| `<leader>xq` | Quickfix list         | Open quickfix list         |
| `<leader>xl` | Location list         | Open location list         |
| `<leader>xt` | Todo list             | Open todos in trouble      |

### Linting

| Key         | Action          | Description                |
| ----------- | --------------- | -------------------------- |
| `<leader>l` | Trigger linting | Run linter on current file |

---

## 🎨 Code Editing

### Comments

| Key   | Action               | Description                    |
| ----- | -------------------- | ------------------------------ |
| `gcc` | Toggle line comment  | Comment/uncomment current line |
| `gbc` | Toggle block comment | Comment/uncomment block        |

### Surround

| Key  | Action          | Description                   |
| ---- | --------------- | ----------------------------- |
| `ys` | Add surround    | Add surrounding characters    |
| `ds` | Delete surround | Remove surrounding characters |
| `cs` | Change surround | Change surrounding characters |

### Substitute

| Key  | Action                 | Description              |
| ---- | ---------------------- | ------------------------ |
| `s`  | Substitute with motion | Replace text with motion |
| `ss` | Substitute line        | Replace entire line      |
| `S`  | Substitute to EOL      | Replace to end of line   |

### Formatting

| Key          | Action            | Description                      |
| ------------ | ----------------- | -------------------------------- |
| `<leader>mp` | Format file/range | Format current file or selection |

---

## 📝 Todo Comments

| Key  | Action        | Description                   |
| ---- | ------------- | ----------------------------- |
| `]t` | Next todo     | Jump to next TODO comment     |
| `[t` | Previous todo | Jump to previous TODO comment |

---

## 💾 Session Management

| Key          | Action          | Description                           |
| ------------ | --------------- | ------------------------------------- |
| `<leader>wr` | Restore session | Restore session for current directory |
| `<leader>ws` | Save session    | Save current session                  |

---

## 🎯 Completion (nvim-cmp)

| Key          | Action              | Description                 |
| ------------ | ------------------- | --------------------------- |
| `Ctrl+K`     | Previous suggestion | Move to previous completion |
| `Ctrl+J`     | Next suggestion     | Move to next completion     |
| `Ctrl+Space` | Show completions    | Trigger completion menu     |
| `Ctrl+E`     | Abort completion    | Close completion window     |
| `Enter`      | Confirm selection   | Accept selected completion  |

---

## 🔌 Plugins Overview

### Core Plugins

- **Lazy.nvim** - Plugin manager
- **Alpha** - Dashboard/startup screen
- **Which-key** - Key binding helper
- **Lualine** - Status line
- **Bufferline** - Buffer tabs
- **Nvim-tree** - File explorer

### LSP & Language Support

- **Mason** - LSP installer
- **nvim-lspconfig** - LSP configuration
- **nvim-cmp** - Autocompletion
- **nvim-treesitter** - Syntax highlighting
- **Conform** - Code formatting
- **nvim-lint** - Code linting

### Git & Version Control

- **Gitsigns** - Git integration
- **LazyGit** - Git interface
- **Trouble** - Diagnostics panel

### Navigation & Search

- **Telescope** - Fuzzy finder
- **Todo-comments** - TODO highlighting
- **Auto-session** - Session management

### Editing Enhancements

- **nvim-autopairs** - Auto bracket pairing
- **Comment.nvim** - Code commenting
- **nvim-surround** - Surround text operations
- **Substitute** - Advanced text replacement
- **vim-maximizer** - Window maximization

### UI & Themes

- **Nord** - Color scheme
- **Dressing** - Better UI components
- **Indent-blankline** - Indentation guides

---

## 🎨 Color Scheme

**Active Theme:** Nord (Dark mode)

---

## ⚙️ Key Configuration Notes

1. **Leader Key:** Space bar
2. **Auto-formatting:** Enabled on save for supported file types
3. **LSP Servers:** Auto-installed via Mason
4. **File Types Supported:** JavaScript, TypeScript, React, Svelte, Python, Lua, HTML, CSS, JSON, YAML, Markdown, GraphQL, and more
5. **Session Management:** Auto-session with directory-based sessions
6. **Git Integration:** Full git workflow support with visual indicators

---

_Generated from your Neovim configuration files_
