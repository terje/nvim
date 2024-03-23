local M = {
  "L3MON4D3/LuaSnip",
}

function M.config()
  local ls = require "luasnip"
  local s = ls.snippet
  local i = ls.insert_node
  local fmt = require("luasnip.extras.fmt").fmt

  ls.add_snippets("lua", {
    s(
      {
        trig = "lazy",
        namr = "Lazy plugin",
        dscr = "Spec file for lazy plugin",
      },
      fmt(
        [[
      local M = {
        <>
      }

      function M.config()
      end

      return M
      ]],
        {
          i(1, ""),
        },
        {
          delimiters = "<>",
        }
      )
    ),
  })
end

return M
