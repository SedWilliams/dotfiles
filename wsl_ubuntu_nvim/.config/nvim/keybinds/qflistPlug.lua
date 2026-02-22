
-- Plugin to toggle the quickfix window in Neovim

local function toggle_quickfix()
  local windows = vim.fn.getwininfo()
  local qf_exists = false

  -- Check if any window is a quickfix window
  for _, win in pairs(windows) do
    if win["quickfix"] == 1 then
      qf_exists = true
      break
    end
  end

  -- Toggle the quickfix window
  if qf_exists then
    vim.cmd.cclose()
  elseif not vim.tbl_isempty(vim.fn.getqflist()) then
    -- Only open if the list has items
    vim.cmd.copen()
  end
end

-- Set a normal mode keymap <Leader>q
vim.keymap.set('n', '<Space>q', toggle_quickfix, { desc = "Toggle Quickfix Window" })

