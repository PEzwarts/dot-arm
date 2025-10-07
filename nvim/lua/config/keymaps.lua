-- Move around in neo-tree in normal mode.

vim.keymap.set({ "n", "i", "v" }, "<D-Left>", "<esc><C-h>", { remap = true })
vim.keymap.set({ "n", "i", "v" }, "<D-Right>", "<esc><C-l>", { remap = true })
-- vim.keymap.set({ "n", "i", "v" }, "<D-Up>", "<esc><C-i>", { remap = true })
-- vim.keymap.set({ "n", "i", "v" }, "<D-Down>", "<esc><C-k>", { remap = true })

-- Save file.

vim.keymap.set({ "n", "i", "v" }, "<D-c>", "<esc><cmd>:w<cr>", { remap = true })

-- Close an buffer.

vim.keymap.set({ "n", "i", "v" }, "<D-d>", "<esc><leader>bd<cr>", { remap = true })

-- vim.keymap.set({ "n", "i", "v" }, "<D-d>", function ()
--   if vim.fn.bufnr("$") < 1 then
--     vim.cmd(":bd")
--     vim.cmd(":Neotree")
--   end
-- end, { remap = true })

-- Move around buffers.

vim.keymap.set({ "n", "i", "v" }, "<A-Left>", "<esc><cmd>:bp<cr>", { remap = true })
vim.keymap.set({ "n", "i", "v" }, "<A-Right>", "<esc><cmd>:bn<cr>", { remap = true })

-- Select all.

vim.keymap.set({ "n", "i", "v" }, "<D-s>", "<esc>gg<S-v>G", { remap = true })

-- Move an line or char.

vim.keymap.set({ "n", "i" }, "<D-Up>", "<esc>:MoveLine(-1)<cr>", { remap = true, silent = true })
vim.keymap.set({ "n", "i" }, "<D-Down>", "<esc>:MoveLine(1)<cr>", { remap = true, silent = true })

vim.keymap.set("v", "<D-Up>", ":MoveBlock(-1)<cr>", { remap = true, silent = true })
vim.keymap.set("v", "<D-Down>", ":MoveBlock(1)<cr>", { remap = true, silent = true })

-- Delete word.

vim.keymap.set({ "n" }, "<S-bs>", "caw", { remap = true })

-- Switch between modes.

vim.keymap.set("n", "<D-z>", "i", { remap = true })
vim.keymap.set("i", "<D-z>", "<esc>", { remap = true })
vim.keymap.set("v", "<D-z>", "i", { remap = true })

-- vim.keymap.set("n", "<A>", "i", { remap = true })
-- vim.keymap.set("i", "<A>", "<esc>", { remap = true })
-- vim.keymap.set("v", "<A>", "i", { remap = true })

-- Terminal.

vim.keymap.set("t", "<S-Up>", [[<C-\><C-n><S-Up>]], { remap = true })
vim.keymap.set("t", "<D-/>", [[<C-\><C-n>/]], { remap = true })
vim.keymap.set({ "t", "n" }, "<S-bs>", "<C-bs>", { remap = true })

vim.keymap.set("n", "<cr>", "a", { remap = true })

if vim.g.term == true then
  if vim.g.write == false then
    vim.keymap.del({ "n", "i", "v", "t" }, "<D-x>")
  else
    vim.cmd(":NeovimProjectDiscover")
    vim.keymap.set({"n", "i", "v", "t"}, "<D-x>", "<cmd>:MarkdownPreview<cr>", {remap = true, silent = true})
  end
else
  vim.cmd(":NeovimProjectDiscover")
  vim.keymap.set({"n", "i", "v", "t"}, "<D-x>", "<cmd>:ToggleTerm toggle direction=tab<cr>", {remap = true, silent = true})
end

-- Increment & decrement.

vim.keymap.set({ "n", "i", "v" }, "<A-Up>", function ()
  require("dial.map").manipulate("increment", "normal")
end, { remap = true })

vim.keymap.set({ "n", "i", "v" }, "<A-Down>", function ()
  require("dial.map").manipulate("decrement", "normal")
end, { remap = true })

-- Annoying. Just disable.

vim.keymap.set({ "n", "i", "v" }, "qq", "", { remap = true })
vim.keymap.set({ "n", "i", "v" }, "<D-r>", "", { remap = true })
