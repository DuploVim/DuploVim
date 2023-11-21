local path = vim.fn.expand('$HOME/coding')

require "neoproj".setup {
  -- Directory which contains all of your projects
  project_path = path,
}

require "neoproj".register_template {
	name = "Xmake C++ project",
	expand = "xmake create -P . && xmake project -k compile_commands --lsp=ccls",
}
