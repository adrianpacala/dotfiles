require("lazy").setup({
  {
    "AstroNvim/AstroNvim",
    import = "astronvim.plugins",
    opts = {
      icons_enabled = true,
      mapleader = " ",
      maplocalleader = ",",
      pin_plugins = nil,
      update_notifications = false,
    },
  },
  { import = "community" },
  { import = "plugins" },
} --[[@as LazySpec]], {} --[[@as LazyConfig]])
