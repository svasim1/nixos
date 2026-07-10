{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      lazy-nvim
    ];
    extraLuaConfig = ''
      vim.o.number = true
      vim.o.tabstop = 2
      vim.o.shiftwidth = 2

      require("lazy").setup({
        {
          "hrsh7th/nvim-cmp",
          priority = 100,
          config = function()
            local cmp = require("cmp")
            cmp.setup({
              snippet = {
                expand = function(args)
                  require("luasnip").lsp_expand(args.body)
                end,
              },
              mapping = cmp.mapping.preset.insert({}),
              sources = {
                { name = "nvim_lsp" },
                { name = "luasnip" },
              },
            })
          end,
        },
        { "hrsh7th/cmp-nvim-lsp" },
        { "L3MON4D3/LuaSnip" },
        { "saadparwaiz1/cmp_luasnip" },
        { "nvim-treesitter/nvim-treesitter" },
        { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
      })
    '';
  };
}
