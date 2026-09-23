# Neovim Keybindings Reference

**Leader key:** `Space`

---

## Windows

| Key | Action |
|-----|--------|
| `Ctrl+h` | Move focus to left window |
| `Ctrl+j` | Move focus to lower window |
| `Ctrl+k` | Move focus to upper window |
| `Ctrl+l` | Move focus to right window |
| `Ctrl+Up` | Increase window height |
| `Ctrl+Down` | Decrease window height |
| `Ctrl+Left` | Decrease window width |
| `Ctrl+Right` | Increase window width |

---

## Navigation

| Key | Action |
|-----|--------|
| `Ctrl+d` | Scroll half-page down, cursor stays centered |
| `Ctrl+u` | Scroll half-page up, cursor stays centered |
| `n` | Next search result, centered |
| `N` | Previous search result, centered |

---

## Editing

| Key | Mode | Action |
|-----|------|--------|
| `J` | Visual | Move selected lines down |
| `K` | Visual | Move selected lines up |
| `<` | Visual | Indent left, keep selection |
| `>` | Visual | Indent right, keep selection |
| `Space + p` | Visual | Paste over selection without overwriting yank register |
| `Space + d` | Normal / Visual | Delete without overwriting yank register |

---

## Buffers

| Key | Action |
|-----|--------|
| `Shift+l` | Next buffer |
| `Shift+h` | Previous buffer |

---

## File

| Key | Action |
|-----|--------|
| `Space + w` | Save file |
| `Space + q` | Quit |

---

## Search

| Key | Action |
|-----|--------|
| `Escape` | Clear search highlight |

---

## LSP (active when a language server is attached)

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Show references |
| `gi` | Go to implementation |
| `K` | Hover documentation |
| `Space + rn` | Rename symbol |
| `Space + ca` | Code action |
| `Space + e` | Open diagnostic float |
| `[d` | Go to previous diagnostic |
| `]d` | Go to next diagnostic |

---

## Completion (blink.cmp)

| Key | Action |
|-----|--------|
| `Ctrl+Space` | Trigger completion |
| `Ctrl+n` / `Down` | Next item |
| `Ctrl+p` / `Up` | Previous item |
| `Ctrl+y` | Accept item |
| `Ctrl+e` | Cancel completion |
| `Ctrl+b` | Scroll docs up |
| `Ctrl+f` | Scroll docs down |

---

## Telescope (fuzzy finder)

| Key | Action |
|-----|--------|
| `Space + ff` | Find files |
| `Space + fg` | Live grep (search in files) |
| `Space + fb` | Find open buffers |
| `Space + fh` | Search help tags |
| `Space + fr` | Recent files |
| `Space + fd` | Show diagnostics |

### Inside Telescope

| Key | Action |
|-----|--------|
| `Ctrl+n` / `Ctrl+p` | Next / previous result |
| `Ctrl+j` / `Ctrl+k` | Next / previous result (alternative) |
| `Enter` | Open selected file |
| `Ctrl+x` | Open in horizontal split |
| `Ctrl+v` | Open in vertical split |
| `Ctrl+t` | Open in new tab |
| `Escape` | Close telescope |

---

## Oil (file explorer)

| Key | Action |
|-----|--------|
| `-` | Open parent directory of current file |
| `:Oil` | Open current working directory |

### Inside Oil

| Key | Action |
|-----|--------|
| `Enter` | Open file or directory |
| `-` | Go up to parent directory |
| `_` | Open current working directory |
| `Ctrl+s` | Open in vertical split |
| `Ctrl+h` | Open in horizontal split |
| `Ctrl+t` | Open in new tab |
| `Ctrl+p` | Preview file |
| `q` | Quit oil |

---

## Git (gitsigns)

| Key | Action |
|-----|--------|
| `]h` | Next hunk |
| `[h` | Previous hunk |
| `Space + hs` | Stage hunk |
| `Space + hr` | Reset hunk |
| `Space + hu` | Undo stage hunk |
| `Space + hp` | Preview hunk |
| `Space + hb` | Blame current line |
| `Space + hd` | Diff this file |
