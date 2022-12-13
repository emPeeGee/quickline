---@diagnostic disable: undefined-global


local function print_current_line()
  local line = vim.api.nvim_get_current_line()
  local lineNr = vim.api.nvim_buf_line_count(0)
  print(line, lineNr)

  local highlight_group = 'ErrorMsg'
  -- for _, line in ipairs(lines) do
  local pattern = '^.'
  vim.api.nvim_buf_add_highlight(0, -1, highlight_group, 0, 0, 4)
  -- end
end

return {
  quickline = print_current_line
}
