local M = {}

function M.listFiles(directory, extension)
  local files = {}
  local p = io.popen('find "' .. directory .. '" -type f -name "*' .. extension .. '"')
  for file in p:lines() do
    table.insert(files, file)
  end
  p:close()
  return files
end

return M
