if(vim.fn.executable("cb") == 0) then
  return
end

vim.g.clipboard = {
  name = "cb",
  copy = {
    ["+"] = "cb copy",
    ["*"] = "cb copy",
  },
  paste = {
    ["+"] = "cb paste",
    ["*"] = "cb paste",
  },
  cache_enabled = 0,
}

