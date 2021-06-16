local cmd = vim.cmd
local g = vim.g
local b = vim.bo
local w = vim.wo

local utils = require("utils")
local map = utils.keymap


cmd[[
set encoding = UTF-8
set hidden
set nobackup
set nowritebackup
]]

map('i', '')
