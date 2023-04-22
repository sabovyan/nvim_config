local main = function()
  if vim.g.vscode then
    -- VSCode extension
  else
    require("sabovyan")
    -- local currentDir = vim.fn.getcwd()
    --
    -- local lower = string.lower(currentDir)
    -- local isUcraft = string.find(lower, 'uc')
    --
    -- if isUcraft then
    require("uc")
    -- end
  end
end

main()
