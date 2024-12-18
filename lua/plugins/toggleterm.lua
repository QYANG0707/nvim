require("toggleterm").setup({
   persist_mode = false,
   start_in_insert = true,

   direction = 'vertical',
   open_mapping = [[<C-\>]],
   -- on_open = function(term)
   --  vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<c-w>", "exit<CR>", { noremap = true, silent = true })
   -- end,
   close_on_exit = true,

   
})
function _G.set_terminal_keymaps()
     local opts = {buffer = 0}
     vim.keymap.set('t', '<esc>', [[<C-/><C-n>]], opts)
     vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
     vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
     vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
     vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
     vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
     -- vim.keymap.set('t', '<C-w>', [[<C-/><C-n><C-w>]], opts)
   end
-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

vim.keymap.set('n', '<C-b>',':TermExec cmd="python %"<CR>',opts)

function _G.set_terminal_keymaps()
  local opts = { buffer = 0, noremap = true }

  -- force close without prompting
  vim.keymap.set("t", "<C-w>", [[<Cmd>q!<CR>]], opts)
end
