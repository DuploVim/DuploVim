local path = vim.fn.expand('$HOME/coding')

require "neoproj".setup {
  -- Directory which contains all of your projects
  project_path = path,
}
