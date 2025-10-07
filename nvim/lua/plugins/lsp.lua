return {
  {
    "rcarriga/nvim-notify",

    opts = {
      level = 5,
      render = "minimal",
      stages = "static"
    }
  },

  {
    "neovim/nvim-lspconfig",

    dependencies = {
      { "mason-org/mason.nvim" },
      { "mason-org/mason-lspconfig.nvim" }
    }
  },

  {
    "mason-org/mason.nvim",

    cmd = "Mason",
    keys = { "<cmd>:Mason<cr>" },
    build = { ":MasonUpdate" },
    opts_extend = { "ensured_installed" },
    opts = {
      ensured_installed = {
        "rust-analyzer",

        "clangd",
        "ast-grep",
        "codelldb",
        "cpptools",

        -- Vuln detectors.
        "trivy",
        "snyk",

        "rust-analyzer",

        "python-lsp-server",

        -- XML formatter.
        "lemminx",

        "lua-language-server",
        "stylua"
      },
    },

    config = function (_, opts)
      require("mason").setup(opts)

      local mason_reg = require("mason-registry")

      mason_reg.refresh(function ()
        for _, pkg in ipairs(opts.ensured_installed) do
          local select_pkg = mason_reg.get_package(pkg)

          if not select_pkg:is_installed() then
            select_pkg:install()
          end
        end
      end)
    end
  },
}
