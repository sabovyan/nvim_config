local main = function()
  if vim.g.vscode then
    -- VSCode extension
  else
    require("sabovyan")
  end
end

main()
