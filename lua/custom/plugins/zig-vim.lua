return {
  {
    'ziglang/zig.vim',
    config = function()
      vim.g.zig_fmt_parse_errors = 0 -- Don't show parse errors in a separate window
      vim.g.zig_fmt_autosave = 0 -- Disable format-on-save from zig.vim

      vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = { '*.zig', '*.zon' },
        callback = function()
          vim.lsp.buf.format()
        end,
      })
    end,
  },
}

