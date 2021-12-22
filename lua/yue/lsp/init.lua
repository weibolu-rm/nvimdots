-- entry point for lsp configs
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("yue.lsp.lsp-installer")
require("yue.lsp.handlers").setup()
