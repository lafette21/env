local augroup = vim.api.nvim_create_augroup
local EnvGroup = augroup('env', {})

vim.api.nvim_create_autocmd({"BufWritePre"}, {
   group = EnvGroup,
   pattern = "*",
   callback = function()
       local line = vim.call('winsaveview')
       vim.cmd([[%s/\s\+$//e]])             -- Remove trailing whitespace
       vim.cmd([[%s/\($\n\s*\)\+\%$//e]])   -- Remove empty lines from the end of file
       vim.call('winrestview', line)
   end
})
