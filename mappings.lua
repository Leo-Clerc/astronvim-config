-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- Those ones are here to be used on azerty keyboard
    ["à"] = {"@", desc = "Macro"},
    ["µ"] = {"#", desc = "Search previous word under cursor"},
    ["è"] = {"`", desc = "Goes to exact spot of the mark"},
    ["é"] = {"", desc = ""},
    ["ç"] = {"{", desc = "Move one paragraph backward"},
    ["<C-ç>"] = {"}", desc = "Move one paragrah forward"},
    ["^"] = {"^<leader>", desc = "Tired of having to press space everytime afterward"},
    ["§"] = {"\\", desc = "Split window in two horizonatally ?"},
    ["<A-("] = {"[", desc = "Bracket"},
    ["<A-)"] = {"]", desc = "Bracket"},

    -- Useful mappings
    ["<C-u>"] = {"<C-u>zz", desc = "Move up half a screen"},
    ["<C-d>"] = {"<C-d>zz", desc = "Move down half a screen"},
    ["<C-b>"] = {":bprevious<CR>", desc = "Previous buffer"},
    ["<C-n>"] = {":bnext<CR>", desc = "Next buffer"},

  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<A-("] = {"[", desc = "Bracket"},
    ["<A-)"] = {"]", desc = "Bracket"},
    ["§"] = {"\\", desc = "Who the heck uses § anyway ???"},
  },
  v = {
    ["p"] = {"_dP", desc = "Replace selection with content in buffer"}
  },
}


