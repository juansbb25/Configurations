require'nvim-tree'.setup {
  auto_close = true,
  filters = {custom = {'*.tmp', '.git'}},
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = true,
  ignore_ft_on_setup = {'dashboard'},
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,
  update_focused_file = {enable = true, update_cwd = true, ignore_list = {}},
  system_open = {
    -- the command to run this, leaving nil should work in most cases
    cmd = nil,
    -- the command arguments as a list
    args = {}
  },
  filters = {custom = {'.git'}},
  view = {
    side = 'left',
    mappings = {custom_only = false, list = {}}
  },
  renderer = {
    indent_markers = {enable = true, icons = {corner = "└ ", edge = "│ ", none = "  "}}
  },
  actions = {
    open_file = {
      quit_on_file = true
    } 
  }
}
