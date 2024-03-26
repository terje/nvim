require "base.launch"
require "base.options"
require "base.autocmds"
require "base.keymaps"
require "base.globals"

-- Core behaviours
spec "plugins.core.autopairs"
spec "plugins.core.gittory"
spec "plugins.core.tmux-navigation"
spec "plugins.core.spectre"

-- UI
spec "plugins.ui.alpha"
spec "plugins.ui.breadcrumbs"
spec "plugins.ui.bufferline"
spec "plugins.ui.colorizer"
spec "plugins.ui.devicons"
spec "plugins.ui.dressing"
spec "plugins.ui.edgy"
spec "plugins.ui.illuminate"
spec "plugins.ui.indentline"
spec "plugins.ui.lualine"
spec "plugins.ui.mini-bufremove"
spec "plugins.ui.navic"
spec "plugins.ui.neo-tree"
spec "plugins.ui.neoscroll"
spec "plugins.ui.neotab"
spec "plugins.ui.noice"
spec "plugins.ui.notify"
spec "plugins.ui.oil"
spec "plugins.ui.telescope"
spec "plugins.ui.toggleterm"
spec "plugins.ui.ufo"
spec "plugins.ui.whichkey"

-- Core dev tools
spec "plugins.dev-core.cmp"
spec "plugins.dev-core.lspconfig"
spec "plugins.dev-core.luasnip"
spec "plugins.dev-core.mason"
spec "plugins.dev-core.none-ls"
spec "plugins.dev-core.schemastore"
spec "plugins.dev-core.treesitter"
spec "plugins.dev-core.ts-error-translator"

-- Interactive dev toolsols
spec "plugins.dev.comment"
spec "plugins.dev.conform"
spec "plugins.dev.diffview"
spec "plugins.dev.gitsigns"
spec "plugins.dev.inc-rename"
spec "plugins.dev.lazygit"
spec "plugins.dev.markdown-preview"
spec "plugins.dev.neotest"
spec "plugins.dev.overseer"
spec "plugins.dev.refactoring"
spec "plugins.dev.todo-comments"
spec "plugins.dev.trouble"
spec "plugins.dev.tsc"

-- Colorschemes
spec "colorschemes.catppuccin"
-- spec "colorschemes.kanagawa"
-- spec "colorschemes.everforest"

-- Extras (AI ++)
spec "plugins.extras.chatgpt"
spec "plugins.extras.copilot"
spec "plugins.extras.copilotchat"
spec "plugins.extras.codecompanion"
spec "plugins.extras.telescope-simulators"
spec "plugins.extras.simctl"

require "base.lazy"
