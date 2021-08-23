require'lspconfig'.sqls.setup{
    cmd = { "sqls" },
    filetypes = { "sql", "mysql" },
    root_dir = function(fname)
        return vim.fn.getcwd()
    end,
    settings = {
        sqls = {
            connections = {
                {
                   driver = 'mysql',
                   dataSourceName = 'root:903108759@tcp(127.0.0.1:3306)/mysql',
                }
            },
        },
    },
}
