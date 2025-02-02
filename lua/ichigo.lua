return {
  "ichigo", -- Dummy name, as it's a custom theme
  config = function()
    -- Define the Ichigo color palette
    local ichigo_colors = {
      bg = "#1a1b26",      -- Main background
      fg = "#c0c5ce",      -- Main foreground
      selection = "#3b4048", -- Selection background
      comment = "#70757f",   -- Comments
      red = "#e06c75",        -- Red/Error
      green = "#98c379",      -- Green
      yellow = "#d19a66",     -- Yellow
      blue = "#61afef",       -- Blue
      magenta = "#c678dd",    -- Magenta
      cyan = "#56b6c2",       -- Cyan
      orange = "#e69f66",     -- Orange (Ichigo accent color)
    }

    -- Set terminal colors (optional, but recommended for consistency)
    vim.g.terminal_color_0 = ichigo_colors.bg
    vim.g.terminal_color_1 = ichigo_colors.red
    vim.g.terminal_color_2 = ichigo_colors.green
    vim.g.terminal_color_3 = ichigo_colors.yellow
    vim.g.terminal_color_4 = ichigo_colors.blue
    vim.g.terminal_color_5 = ichigo_colors.magenta
    vim.g.terminal_color_6 = ichigo_colors.cyan
    vim.g.terminal_color_7 = ichigo_colors.fg
    vim.g.terminal_color_8 = ichigo_colors.comment  -- Could be a darker fg
    vim.g.terminal_color_9 = ichigo_colors.red
    vim.g.terminal_color_10 = ichigo_colors.green
    vim.g.terminal_color_11 = ichigo_colors.yellow
    vim.g.terminal_color_12 = ichigo_colors.blue
    vim.g.terminal_color_13 = ichigo_colors.magenta
    vim.g.terminal_color_14 = ichigo_colors.cyan
    vim.g.terminal_color_15 = ichigo_colors.fg


    -- Set highlights
    vim.api.nvim_set_hl(0, "Normal", { bg = ichigo_colors.bg, fg = ichigo_colors.fg })
    vim.api.nvim_set_hl(0, "Comment", { fg = ichigo_colors.comment })
    vim.api.nvim_set_hl(0, "Keyword", { fg = ichigo_colors.magenta })
    vim.api.nvim_set_hl(0, "Type", { fg = ichigo_colors.blue })
    vim.api.nvim_set_hl(0, "String", { fg = ichigo_colors.green })
    vim.api.nvim_set_hl(0, "Number", { fg = ichigo_colors.yellow })
    vim.api.nvim_set_hl(0, "Identifier", { fg = ichigo_colors.fg })
    vim.api.nvim_set_hl(0, "Constant", { fg = ichigo_colors.orange })  -- Ichigo accent
    vim.api.nvim_set_hl(0, "Error", { fg = ichigo_colors.red })
    vim.api.nvim_set_hl(0, "Warning", { fg = ichigo_colors.yellow })
    vim.api.nvim_set_hl(0, "Special", { fg = ichigo_colors.cyan })  -- Or another color
    vim.api.nvim_set_hl(0, "Title", { fg = ichigo_colors.blue, bold = true }) -- Example bolding

    -- Set background and other UI elements
    vim.opt.background = "dark"  -- Important!
    vim.opt.termguicolors = true -- For true color support (if your terminal supports it)
    vim.opt.colorscheme = "ichigo" -- Set the colorscheme name (doesn't really matter)

    -- Set other UI options as needed (e.g., cursorline, etc.)
    vim.opt.cursorline = true
    vim.opt.colorcolumn = "80"  -- Example: Highlight 80th column

    -- If you need to set specific highlight groups that don't have defaults
    -- (e.g. Telescope results, Treesitter highlights, etc.) you'll need to do
    -- some research and find out which highlight groups they use.
    -- Example for Telescope:
    -- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = ichigo_colors.bg, fg = ichigo_colors.fg })
    -- vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = ichigo_colors.selection, fg = ichigo_colors.fg })
  end,
}
