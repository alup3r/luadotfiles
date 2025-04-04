return {
  "vimwiki/vimwiki",
  config = function()
    vim.g.vimwiki_list = {
      {
        path = "~/Documents/vimwikiii/",
        syntax = "markdown",
        ext = ".md",
      }
    }
  end
}
