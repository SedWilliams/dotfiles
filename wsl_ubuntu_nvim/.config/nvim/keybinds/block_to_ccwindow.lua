local chat = require("CopilotChat")

vim.keymap.set("v", "<C-s>", function()
    chat.open({
        sticky = {
            "#selection",
            "#buffer:listed",
            "@bash",
        },
    })
end, { noremap = true, silent = true })
