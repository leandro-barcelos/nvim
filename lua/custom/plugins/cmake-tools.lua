vim.pack.add { 'https://github.com/Civitasv/cmake-tools.nvim' }
require('cmake-tools').setup {
  cmake_command = 'cmake',
  cmake_build_directory = 'build',
  cmake_build_directory_prefix = '',
  cmake_generate_options = { '-D', 'CMAKE_EXPORT_COMPILE_COMMANDS=1' },
  cmake_build_options = {},
  cmake_console_size = 10,
  cmake_console_position = 'belowright',
  cmake_show_console = 'always',
  cmake_dap_configuration = {
    name = 'cpp',
    type = 'codelldb',
    request = 'launch',
    stopOnEntry = false,
    runInTerminal = true,
    console = 'integratedTerminal',
  },
  cmake_runner = {
    name = 'toggleterm',
    opts = {
      direction = 'horizontal',
      close_on_exit = false,
      auto_scroll = true,
      singleton = true,
    },
  },
  cmake_executor = {
    name = 'toggleterm',
    opts = {
      direction = 'horizontal',
      close_on_exit = false,
      auto_scroll = true,
      singleton = true,
    },
  },
  cmake_terminal = {
    name = 'toggleterm',
    opts = {
      direction = 'horizontal',
      close_on_exit = false,
      auto_scroll = true,
    },
  },
}

-- Keymaps
local keymap = vim.keymap.set
keymap('n', '<leader>cg', '<cmd>CMakeGenerate<cr>', { desc = 'CMake Generate' })
keymap('n', '<leader>cb', '<cmd>CMakeBuild<cr>', { desc = 'CMake Build' })
keymap('n', '<leader>cr', '<cmd>CMakeRun<cr>', { desc = 'CMake Run' })
keymap('n', '<leader>cd', '<cmd>CMakeDebug<cr>', { desc = 'CMake Debug' })
