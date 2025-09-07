return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "buffers",
      separator_style = "slant",
      always_show_bufferline = true,
      show_buffer_close_icons = true,
      show_close_icon = true,
      color_icons = true,
      enforce_regular_tabs = false,
      tab_size = 18,
      max_name_length = 20,
      max_prefix_length = 15,
      truncate_names = true,
      diagnostics = "nvim_lsp",
      diagnostics_update_in_insert = false,
      hide = { extensions = true, inactive = false },
      sort_by = "insert_after_current",
      groups = {
        options = {
          toggle_hidden_on_enter = true,
        },
        items = {
          {
            name = "Tests",
            highlight = { underline = true, sp = "blue" },
            priority = 2,
            icon = " ",
            matcher = function(buf)
              return buf.name:match("%_test") or buf.name:match("%_spec")
            end,
          },
          {
            name = "Docs",
            highlight = { underline = true, sp = "green" },
            auto_close = false,
            matcher = function(buf)
              return buf.name:match("%.md") or buf.name:match("%.txt")
            end,
          },
        },
      },
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "left",
          separator = true,
        },
      },
    },
  },
}