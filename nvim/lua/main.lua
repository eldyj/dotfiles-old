map = vim.keymap.set
set = vim.opt
gset = vim.g

function im(key, action)
  map('i', key, action)
end

function nm(key, action)
  map('n', key, action)
end

function sn(char, snip)
  im(char , snip .. '<esc>hli')
end
