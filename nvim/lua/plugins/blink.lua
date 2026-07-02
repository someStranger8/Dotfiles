
return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "1.*",
  opts = {
    completion = {
      documentation = {
        auto_show = true,
      },
    },
    keymap = {
      preset = "default",
      ["<Tab>"] = { "select_prev", "fallback" },
      ["<S-Tab>"] = { "select_next", "fallback" },
      ["<Cr>"] = { "accept", "fallback" },
      ["<Right>"] = { "accept", "fallback"},
      ["<Left>"] = { "cancel", "fallback" },
      ["Esc"] = { "cancel", "fallback" }
    },
    appearance = {
      nerd_font_variant = "mono"
    },

    completion = { documentation = { auto_show = false } },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    signature = {enabled = true},
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
