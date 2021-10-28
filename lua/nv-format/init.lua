require "format".setup {
    ["*"] = {
        {
            cmd = {
                "sed -i 's/[ \t]*$//'"
            }
        } -- remove trailing whitespace
    },
    vim = {
        {
            cmd = {
                "luafmt -w replace"
            },
            start_pattern = "^lua << EOF$",
            end_pattern = "^EOF$"
        }
    },
    haskell = {
        {
            cmd = {
                function(file)
                    return string.format("stylish-haskell -i %s", file)
                end
            }
        }
    },
    vimwiki = {
        {
            cmd = {
                "prettier -w --parser babel"
            },
            start_pattern = "^{{{javascript$",
            end_pattern = "^}}}$"
        }
    },
    lua = {
        {
            cmd = {
                function(file)
                    return string.format("luafmt -l %s -w replace %s", vim.bo.textwidth, file)
                end
            }
        }
    },
    cpp = {
        {
            cmd = {
                function(file)
                    return string.format("clang-format -i -style='{BasedOnStyle: google, IndentWidth: 4}' %s", file)
                end
            }
        }
    },
    c = {
        {
            cmd = {
                function(file)
                    return string.format("clang-format -i -style='{BasedOnStyle: google, IndentWidth: 4}' %s", file)
                end
            }
        }
    },
    python = {
        {
            cmd = {
                function(file)
                    return string.format("yapf -i %s", file)
                end
            }
        }
    },
    python = {
        {
            cmd = {
                function(file)
                    return string.format("google-java-format -i %s", file)
                end
            }
        }
    },
    go = {
        {
            cmd = {
                "gofmt -w",
                "goimports -w"
            },
            tempfile_postfix = ".tmp"
        }
    },
    javascript = {
        {
            cmd = {
                "prettier -w",
                "./node_modules/.bin/eslint --fix"
            }
        }
    },
    markdown = {
        {
            cmd = {
                "prettier -w"
            }
        },
        {
            cmd = {
                "black"
            },
            start_pattern = "^```python$",
            end_pattern = "^```$",
            target = "current"
        }
    }
}
