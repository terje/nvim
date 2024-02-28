require "base.launch"
require "base.options"
require "base.autocmds"
require "base.keymaps"

-- Core behaviours
spec "user.core.autopairs"
spec "user.core.spectre"

-- UI
spec "user.ui.alpha"
spec "user.ui.breadcrumbs"
spec "user.ui.bufferline"
spec "user.ui.colorizer"
spec "user.ui.devicons"
spec "user.ui.dressing"
spec "user.ui.edgy"
spec "user.ui.fidget"
spec "user.ui.illuminate"
spec "user.ui.indentline"
spec "user.ui.lualine"
spec "user.ui.mini-bufremove"
spec "user.ui.navic"
spec "user.ui.neo-tree"
spec "user.ui.neotab"
spec "user.ui.neoscroll"
spec "user.ui.noice"
spec "user.ui.oil"
spec "user.ui.telescope"
spec "user.ui.toggleterm"
spec "user.ui.whichkey"
spec "user.ui.ufo"

-- Core dev tools
spec "user.dev-core.cmp"
spec "user.dev-core.lspconfig"
spec "user.dev-core.mason"
spec "user.dev-core.none-ls"
spec "user.dev-core.schemastore"
spec "user.dev-core.treesitter"
spec "user.dev-core.typescript-tools"

-- User dev tools
spec "user.dev.comment"
spec "user.dev.conform"
spec "user.dev.diffview"
spec "user.dev.gitsigns"
spec "user.dev.lazygit"
spec "user.dev.neotest"
spec "user.dev.overseer"
spec "user.dev.todo-comments"
spec "user.dev.trouble"

-- Colorschemes
spec "colorschemes.catppuccin"

-- Extras (AI ++)
spec "user.extras.chatgpt"
spec "user.extras.copilot"
spec "user.extras.copilotchat"
spec "user.extras.neural"

require "base.lazy"
