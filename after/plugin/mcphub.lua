require('mcphub').setup {
  mcpServers = {
    ['laravel-boost'] = {
      command = 'php',
      args = { './artisan', 'boost:mcp' },
      cwd = vim.fn.getcwd(),
      transport = 'stdio',  -- or 'http_stream' / 'sse' if supported
    }
  },
  defaultServer = 'laravel-boost',
}

