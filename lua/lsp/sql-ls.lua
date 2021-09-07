require'lspconfig'.sqls.setup{
    cmd = { "/home/allen/go/bin/sqls" },
    filetypes = { "sql", "mysql" },
    root_dir = function(fname)
        return vim.fn.getcwd()
    end,
    settings = {
        sqls = {
            lowercaseKeywords = true;
            connections = {
                {
                   driver = 'mysql',
                   dataSourceName = 'root:903108759@tcp(127.0.0.1:3306)/mydb',
                }
            },
        },
    },
}
