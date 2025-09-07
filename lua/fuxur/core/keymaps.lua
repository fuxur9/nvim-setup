-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Terminal shortcuts (changed to avoid conflict with tabs)
keymap.set("n", "<leader>teh", "<cmd>split | resize 10 | terminal<CR>", { desc = "Open terminal in horizontal split" })
keymap.set("n", "<leader>tev", "<cmd>vsplit | vertical resize 30 | terminal<CR>", { desc = "Open terminal in vertical split" })
keymap.set("n", "<leader>tet", "<cmd>terminal<CR>", { desc = "Open terminal in current window" })

-- Buffer management (works with bufferline)
keymap.set("n", "<leader>bo", "<cmd>enew<CR>", { desc = "Open new buffer" }) -- open new buffer
keymap.set("n", "<leader>bx", "<cmd>bdelete<CR>", { desc = "Close current buffer" }) -- close current buffer
keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Go to next buffer" }) -- go to next buffer
keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Go to previous buffer" }) -- go to previous buffer
keymap.set("n", "<leader>bf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) -- move current buffer to new tab
keymap.set("n", "<leader>ba", "<cmd>%bd<CR>", { desc = "Close all buffers" }) -- close all buffers
keymap.set("n", "<leader>boo", "<cmd>%bd|e#<CR>", { desc = "Close all other buffers" }) -- close all other buffers

-- Bufferline specific navigation
keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
keymap.set("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", { desc = "Go to buffer 1" })
keymap.set("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", { desc = "Go to buffer 2" })
keymap.set("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", { desc = "Go to buffer 3" })
keymap.set("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", { desc = "Go to buffer 4" })
keymap.set("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", { desc = "Go to buffer 5" })
keymap.set("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>", { desc = "Go to buffer 6" })
keymap.set("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>", { desc = "Go to buffer 7" })
keymap.set("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>", { desc = "Go to buffer 8" })
keymap.set("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>", { desc = "Go to buffer 9" })
keymap.set("n", "<leader>0", "<cmd>BufferLineGoToBuffer -1<CR>", { desc = "Go to last buffer" })

-- Tab management (for when you need actual tabs)
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", function()
  if #vim.api.nvim_list_tabpages() > 1 then
    vim.cmd("tabclose")
  else
    print("Cannot close the last tab page")
  end
end, { desc = "Close current tab" }) -- close current tab with safety check
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) -- go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) -- go to previous tab
