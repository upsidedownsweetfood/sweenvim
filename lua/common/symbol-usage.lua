return {
  'wansmer/symbol-usage.nvim',
  event = 'LspAttach',
  config = function()
    require('symbol-usage').setup()
  end
}
