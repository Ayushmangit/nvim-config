-- ~/.config/nvim/lua/plugins/live-server.lua
return {
    "barrett-ruth/live-server.nvim",
    build = "npm install -g live-server",
    config = function()
        require("live-server").setup()
    end,
    cmd = { "LiveServerStart", "LiveServerStop" },
}
