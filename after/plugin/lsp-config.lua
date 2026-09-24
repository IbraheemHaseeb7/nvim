vim.lsp.config('intelephense', {
  settings = {
    intelephense = {
      stubs = {
        "bcmath", "bz2", "calendar", "Core", "curl", "date", "dom", "doublepack", " Phar",
        "gd", "gettext", "hash", "iconv", "imap", "intl", "json", "ldap", "libxml",
        "mbstring", "mcrypt", "mysql", "mysqli", "password", "pcntl", "pcre", "PDO",
        "pdo_mysql", "Phar", "readline", "recode", "Reflection", "regex", "session",
        "SimpleXML", "soap", "sockets", "sodium", "SPL", "standard", "superglobals",
        "sysvmsg", "sysvsem", "sysvshm", "tokenizer", "xml", "xdebug", "xmlreader",
        "xmlwriter", "yaml", "zip", "zlib", "wordpress", "phpunit", "laravel"
      },
      files = {
        maxSize = 5000000;
      }
    }
  }
})

vim.lsp.enable({'intelephense'})
