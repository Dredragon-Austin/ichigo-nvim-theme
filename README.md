# ichigo-nvim-theme

An Ichigo-inspired colorscheme for Neovim.

![Screenshot](screenshot.png)  
## Installation (Lazy.nvim)

```lua
return {
  -- ... other Lazy.nvim config ...
  {
    "Dredragon-Austin/nvim-ichigo", -- Replace username with your GitHub username
    config = function()
      require("ichigo")  -- No 'plugins.' prefix since it's in the root of the repo
    end,
  },
  -- ... more Lazy.nvim config ...
}
