
vim.keymap.set("n", "<leader>#I", "o#include<><esc>i")
vim.keymap.set("n", "<leader>#i", "o#include \"\"<esc>i")

vim.keymap.set("n", "<leader>#hdr", "Go#endif<esc>ggO#ifndef ___H__<esc>o#define ___H__<esc>hhh<C-v>kI")

