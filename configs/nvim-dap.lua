local dap = require "dap"

local mason_registry = require "mason-registry"
if not mason_registry.is_installed "codelldb" then
  error "Codelldb is not installed. Type `:MasonInstallAll` or install manually by `:Mason` and the find `codelldb`. Also, you can go to your neovim config at lua/custom/configs/nvim-dap.lua and solve it yourself."
end

print("mason installed at: " .. mason_registry.get_package("codelldb"):get_install_path())

dap.adapters.codelldb = {
  type = "server",
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = mason_registry.get_package("codelldb"):get_install_path() .. "/codelldb", -- adjust as needed, must be absolute path
    args = { "--port", "${port}" },

    -- On windows you may have to uncomment this:
    -- detached = false,
  },
}

