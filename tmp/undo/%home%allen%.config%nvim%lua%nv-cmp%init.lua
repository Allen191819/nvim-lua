Vim�UnDo� Nc�!YU4�}����4��g`I#A8�I��r��7   �                                  aB�)    _�                             ����                                                                                                                                                                                                                                                                                                                                                  v        a@}�     �         �      0-- local tabnine = require('cmp_tabnine.config')   -- tabnine:setup({   --     max_lines = 1000;   --     max_num_results = 20;   --     sort = true;   -- })    5��                         j       �       �       5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                       ���       v        a@}�     �      
   �          max_lines = 1000;5��                         �                      5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                       ���       v        a@}�     �   	      �          max_num_results = 20;5��    	                     �                      5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                       ���       v        a@}�     �   	      �          max_num_results = 0;5��    	                    �                     5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                       ���       v        a@}�     �      
   �          max_lines = 100;5��                        �                     5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                       ���       v        a@}�     �      
   �          max_lines = 20;5��                        �                     5�_�                    d       ����                                                                                                                                                                                                                                                                                                                            d          f          v       a@}�     �   c   g   �      "        -- { name = 'cmp_tabnine',   !        --     max_item_count = 3           -- },5��    c                     �      S       J       5�_�      	              �       ����                                                                                                                                                                                                                                                                                                                            d           f���       v       a@}�    �   �   �   �      ,                    -- cmp_tabnine = "[TN]",5��    �                     c      -       *       5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                  v        a@�+    �         �      -local tabnine = require('cmp_tabnine.config')   tabnine:setup({       max_lines = 50;       max_num_results = 5;       sort = true;   })    5��                         j       �       �       5�_�   	              
   !        ����                                                                                                                                                                                                                                                                                                                                                             aB�_     �   !   #   �    5��    !                      �                     �    !                     �                    �    !                      �                     5�_�   
                 "        ����                                                                                                                                                                                                                                                                                                                                                             aB�_     �   !   %   �       �   "   #   �    5��    !                     �              _       5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             aB�a     �   !   #   �       ['<CR>'] = cmp.mapping.confirm({5��    !                      �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             aB�d    �   �   �              }�   �   �                  end�   �   �                      return vim_item�   �   �          %                })[entry.source.name]�   �   �          -                    latex_symbols = "[Latex]"�   �   �          3                    vim_dadbod_completion = "[DB]",�   �   �          $                    path = "[Path]",�   �   �          (                    nuspell = "[Spell]",�   �   �          *                    conjure = "[Conjure]",�   �   �          $                    calc = "[Calc]",�   �   �          )                    cmp_tabnine = "[TN]",�   �   �          '                    nvim_lua = "[Lua]",�   �   �          '                    nvim_lsp = "[LSP]",�   �   �          -                    ultisnips = "[UltiSnip]",�   �   �          (                    buffer = "[Buffer]",�   �   �                      ({�      �                      vim_item.menu =�   ~   �          )            -- set a name for each source�   |   ~          e            vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind�   {   }          -            -- fancy icons and a name of kind�   z   |          *        format = function(entry, vim_item)�   y   {              formatting = {�   x   z              },�   w   y          
        },�   v   x                      max_item_count = 2�   u   w          )        { name = 'vim-dadbod-completion',�   t   v          
        },�   s   u                      max_item_count = 2�   r   t          !        { name = "latex_symbols",�   q   s          
        },�   p   r                      max_item_count = 2�   o   q                  { name = 'conjure',�   n   p          
        },�   m   o                      max_item_count = 2�   l   n                  { name = 'calc',�   k   m          
        },�   j   l                      max_item_count = 2�   i   k                  { name = 'nuspell',�   h   j          
        },�   g   i                      max_item_count = 3�   f   h                  { name = 'cmp_tabnine',�   e   g          
        },�   d   f                      max_item_count = 3�   c   e                  { name = 'path',�   b   d          
        },�   a   c                      max_item_count = 2�   `   b                  { name = 'nvim_lua',�   _   a          
        },�   ^   `                      max_item_count = 3�   ]   _                  { name = 'buffer',�   \   ^          
        },�   [   ]                      max_item_count = 2�   Z   \                  { name = 'ultisnips',�   Y   [          
        },�   X   Z                      max_item_count = 3�   W   Y                  { name = 'nvim_lsp',�   V   X              sources = {�   U   W              },�   T   V                      }),�   S   U                          "s",�   R   T                          "i",�   Q   S                  end, {�   P   R                      end�   O   Q                          fallback()�   N   P                      else�   M   O          0                vim.fn.feedkeys(t("<C-p>"), "n")�   L   N          0            elseif vim.fn.pumvisible() == 1 then�   K   M          P                return vim.fn.feedkeys(t("<C-R>=UltiSnips#JumpBackwards()<CR>"))�   J   L          ?            if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then�   I   K          4        ["<S-Tab>"] = cmp.mapping(function(fallback)�   H   J                      }),�   G   I                          "s",�   F   H                          "i",�   E   G                  end, {�   D   F                      end�   C   E                          fallback()�   B   D                      else�   A   C          0                vim.fn.feedkeys(t("<tab>"), "n")�   @   B          *            elseif check_back_space() then�   ?   A          0                vim.fn.feedkeys(t("<C-n>"), "n")�   >   @          0            elseif vim.fn.pumvisible() == 1 then�   =   ?          M                vim.fn.feedkeys(t("<ESC>:call UltiSnips#JumpForwards()<CR>"))�   <   >          B            elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then�   ;   =          I                vim.fn.feedkeys(t("<C-R>=UltiSnips#ExpandSnippet()<CR>"))�   :   <          l            if vim.fn.complete_info()["selected"] == -1 and vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then�   9   ;          2        ["<Tab>"] = cmp.mapping(function(fallback)�   8   :                      }),�   7   9                          "s",�   6   8                          "i",�   5   7                  end, {�   4   6                      end�   3   5                          fallback()�   2   4                      else�   1   3          /                vim.fn.feedkeys(t("<cr>"), "n")�   0   2          *            elseif check_back_space() then�   /   1          0                vim.fn.feedkeys(t("<C-n>"), "n")�   -   /                          end�   ,   .          T                    return vim.fn.feedkeys(t("<C-R>=UltiSnips#ExpandSnippet()<CR>"))�   +   -          C                if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then�   *   ,          ,            if vim.fn.pumvisible() == 1 then�   )   +          6        ["<C-Space>"] = cmp.mapping(function(fallback)�   (   *          (        ['<C-e>'] = cmp.mapping.close(),�   '   )          /        ['<C-f>'] = cmp.mapping.scroll_docs(4),�   &   (          0        ['<C-d>'] = cmp.mapping.scroll_docs(-4),�   %   '          3        ['<C-n>'] = cmp.mapping.select_next_item(),�   $   &          3        ['<C-p>'] = cmp.mapping.select_prev_item(),�   !   #          $    ['<CR>'] = cmp.mapping.confirm({�       "              mapping = {�      !          &    completion = { keyword_length=2 },�                     },�                        end,�                /            vim.fn["UltiSnips#Anon"](args.body)�                        expand = function(args)�                    snippet = {5��                          F                     �                         R                    �                         n                    �                         �                    �                          �                     �                          �                     �                           �                     �    !                      �                     �    $                     5                    �    %                     e                    �    &                     �                    �    '                     �                    �    (                     �                    �    )                                         �    *                     F                    �    +                     o                    �    ,                     �                    �    -                                          �    /                                         �    0                     >                    �    1                     e                    �    2                     �                    �    3                     �                    �    4                     �                    �    5                     �                    �    6                     �                    �    7                     �                    �    8                     �                    �    9                     �                    �    :                     )                    �    ;                     �                    �    <                     �                    �    =                                         �    >                     a                    �    ?                     �                    �    @                     �                    �    A                     �                    �    B                                         �    C                                         �    D                     3                    �    E                     ?                    �    F                     J                    �    G                     [                    �    H                     l                    �    I                     x                    �    J                     �                    �    K                     �                    �    L                     2	                    �    M                     _	                    �    N                     �	                    �    O                     �	                    �    P                     �	                    �    Q                     �	                    �    R                     �	                    �    S                     �	                    �    T                     �	                    �    U                      �	                     �    V                      �	                     �    W                     
                    �    X                     
                    �    Y                     8
                    �    Z                     ?
                    �    [                     Y
                    �    \                     t
                    �    ]                     {
                    �    ^                     �
                    �    _                     �
                    �    `                     �
                    �    a                     �
                    �    b                     �
                    �    c                     �
                    �    d                                         �    e                                         �    f                     &                    �    g                     B                    �    h                     ]                    �    i                     d                    �    j                     |                    �    k                     �                    �    l                     �                    �    m                     �                    �    n                     �                    �    o                     �                    �    p                     �                    �    q                                         �    r                                         �    s                     -                    �    t                     H                    �    u                     O                    �    v                     u                    �    w                     �                    �    x                      �                     �    y                      �                     �    z                     �                    �    {                     �                    �    |                     �                    �    ~                     ]                    �                         �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                                         �    �                     =                    �    �                     c                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     !                    �    �                     L                    �    �                     n                    �    �                     �                    �    �                      �                     5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             aB�k     �   !   #   �       ['<CR>'] = cmp.mapping.confirm({5��    !                      �                     5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             aB�m    �   !   #          $    ['<CR>'] = cmp.mapping.confirm({5��    !                      �                     5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             aB�s    �   !   #   �       ['<CR>'] = cmp.mapping.confirm({5��    !                      �                     5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                                             aB��     �   #   %   �          select = true,5��    #                     8                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             aB��   	 �   �   �          !            })[entry.source.name]�   �   �          )                latex_symbols = "[Latex]"�   �   �          /                vim_dadbod_completion = "[DB]",�   �   �                           path = "[Path]",�   �   �          $                nuspell = "[Spell]",�   �   �          &                conjure = "[Conjure]",�   �   �                           calc = "[Calc]",�   �   �          %                cmp_tabnine = "[TN]",�   �   �          #                nvim_lua = "[Lua]",�   �   �          #                nvim_lsp = "[LSP]",�   �   �          )                ultisnips = "[UltiSnip]",�   �   �          $                buffer = "[Buffer]",�   w   y              },�   v   x                  max_item_count = 2�   s   u                  max_item_count = 2�   r   t              { name = "latex_symbols",�   q   s              },�   p   r                  max_item_count = 2�   m   o                  max_item_count = 2�   l   n              { name = 'calc',�   k   m              },�   j   l                  max_item_count = 2�   g   i                  max_item_count = 3�   f   h              { name = 'cmp_tabnine',�   e   g              },�   d   f                  max_item_count = 3�   a   c                  max_item_count = 2�   `   b              { name = 'nvim_lua',�   _   a              },�   ^   `                  max_item_count = 3�   [   ]                  max_item_count = 2�   Z   \              { name = 'ultisnips',�   Y   [              },�   X   Z                  max_item_count = 3�   T   V                  }),�   S   U                      "s",�   R   T                      "i",�   H   J                  }),�   G   I                      "s",�   F   H                      "i",�   E   G          
    end, {�   D   F                  end�   C   E                      fallback()�   B   D                  else�   A   C          ,            vim.fn.feedkeys(t("<tab>"), "n")�   @   B          &        elseif check_back_space() then�   ?   A          ,            vim.fn.feedkeys(t("<C-n>"), "n")�   >   @          ,        elseif vim.fn.pumvisible() == 1 then�   =   ?          I            vim.fn.feedkeys(t("<ESC>:call UltiSnips#JumpForwards()<CR>"))�   <   >          >        elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then�   ;   =          E            vim.fn.feedkeys(t("<C-R>=UltiSnips#ExpandSnippet()<CR>"))�   :   <          h        if vim.fn.complete_info()["selected"] == -1 and vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then�   9   ;          .    ["<Tab>"] = cmp.mapping(function(fallback)�   5   7          
    end, {�   4   6                  end�   3   5                      fallback()�   2   4                  else�   1   3          +            vim.fn.feedkeys(t("<cr>"), "n")�   0   2          &        elseif check_back_space() then�   /   1          ,            vim.fn.feedkeys(t("<C-n>"), "n")�   -   /                      end�   ,   .          P                return vim.fn.feedkeys(t("<C-R>=UltiSnips#ExpandSnippet()<CR>"))�   +   -          ?            if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then�   *   ,          (        if vim.fn.pumvisible() == 1 then�   )   +          2    ["<C-Space>"] = cmp.mapping(function(fallback)�   (   *          $    ['<C-e>'] = cmp.mapping.close(),�   '   )          +    ['<C-f>'] = cmp.mapping.scroll_docs(4),�   &   (          ,    ['<C-d>'] = cmp.mapping.scroll_docs(-4),�   %   '          /    ['<C-n>'] = cmp.mapping.select_next_item(),�   $   &          /    ['<C-p>'] = cmp.mapping.select_prev_item(),�   #   %              select = true,)}�   "   $          +    behavior = cmp.ConfirmBehavior.Replace,�   !   #          $    ['<CR>'] = cmp.mapping.confirm({�       "          mapping = {�      !          "completion = { keyword_length=2 },�                 },�                    end,�                +        vim.fn["UltiSnips#Anon"](args.body)�                    expand = function(args)�                snippet = {5��                          F                     �                         V                    �                         v                    �                         �                    �                          �                     �                          �                     �                           �                     �    !                     �                    �    "                                         �    #                     N                    �    $                     k                    �    %                     �                    �    &                     �                    �    '                                         �    (                     D                    �    )                     q                    �    *                     �                    �    +                     �                    �    ,                     %                    �    -                     ~                    �    /                     �                    �    0                     �                    �    1                     �                    �    2                     /                    �    3                     D                    �    4                     c                    �    5                     w                    �    9                     �                    �    :                     �                    �    ;                     X                    �    <                     �                    �    =                     �                    �    >                     3                    �    ?                     d                    �    @                     �                    �    A                     �                    �    B                     �                    �    C                     	                    �    D                     	                    �    E                     -	                    �    F                     <	                    �    G                     I	                    �    H                     V	                    �    R                     �
                    �    S                     �
                    �    T                      �
                     �    X                     �
                    �    Y                                           �    Z                                           �    [                                           �    ^                     L                    �    _                      c                     �    `                      f                     �    a                      {                     �    d                     �                    �    e                      �                     �    f                      �                     �    g                      �                     �    j                                         �    k                      %                     �    l                      (                     �    m                      9                     �    p                     k                    �    q                      �                     �    r                      �                     �    s                      �                     �    v                     �                    �    w                      �                     �    �                                         �    �                     )                    �    �                     O                    �    �                     o                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                     �                    �    �                                         �    �                     /                    �    �                     [                    �    �                     �                    5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                                             aB��     �   #   %   �                  select = true,)}5��    #                     i                     5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                                             aB��     �   #   %   �                  select = true,)5��    #                     h                     5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                                             aB��   
 �   #   %   �                  select = true,})5��    #                     j                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             aB��    �               �   --[[--   File              : init.lua   Date              : 08.09.2021   Last Modified Date: 08.09.2021   --]]--       0-- local tabnine = require('cmp_tabnine.config')   -- tabnine:setup({   --     max_lines = 50;   --     max_num_results = 5;   --     sort = true;   -- })       +vim.g.UltiSnipsRemoveSelectModeMappings = 0       local cmp = require 'cmp'       local t = function(str)   @    return vim.api.nvim_replace_termcodes(str, true, true, true)   end       #local check_back_space = function()   #    local col = vim.fn.col(".") - 1   K    return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil   end   cmp.setup {       snippet = {           expand = function(args)   /            vim.fn["UltiSnips#Anon"](args.body)           end,       },   &    completion = { keyword_length=2 },       mapping = {   (        ['<CR>'] = cmp.mapping.confirm({   3            behavior = cmp.ConfirmBehavior.Replace,               select = true,}),   7            ['<C-p>'] = cmp.mapping.select_prev_item(),   7            ['<C-n>'] = cmp.mapping.select_next_item(),   4            ['<C-d>'] = cmp.mapping.scroll_docs(-4),   3            ['<C-f>'] = cmp.mapping.scroll_docs(4),   ,            ['<C-e>'] = cmp.mapping.close(),   :            ["<C-Space>"] = cmp.mapping(function(fallback)   0                if vim.fn.pumvisible() == 1 then   G                    if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then   X                        return vim.fn.feedkeys(t("<C-R>=UltiSnips#ExpandSnippet()<CR>"))                       end       4                    vim.fn.feedkeys(t("<C-n>"), "n")   .                elseif check_back_space() then   3                    vim.fn.feedkeys(t("<cr>"), "n")                   else                       fallback()                   end               end, {               "i",               "s",           }),   2        ["<Tab>"] = cmp.mapping(function(fallback)   l            if vim.fn.complete_info()["selected"] == -1 and vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then   I                vim.fn.feedkeys(t("<C-R>=UltiSnips#ExpandSnippet()<CR>"))   B            elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then   M                vim.fn.feedkeys(t("<ESC>:call UltiSnips#JumpForwards()<CR>"))   0            elseif vim.fn.pumvisible() == 1 then   0                vim.fn.feedkeys(t("<C-n>"), "n")   *            elseif check_back_space() then   0                vim.fn.feedkeys(t("<tab>"), "n")               else                   fallback()               end           end, {           "i",           "s",       }),   0    ["<S-Tab>"] = cmp.mapping(function(fallback)   ;        if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then   L            return vim.fn.feedkeys(t("<C-R>=UltiSnips#JumpBackwards()<CR>"))   ,        elseif vim.fn.pumvisible() == 1 then   ,            vim.fn.feedkeys(t("<C-p>"), "n")           else               fallback()           end   
    end, {       "i",       "s",   }),   },   sources = {       { name = 'nvim_lsp',       max_item_count = 3   },   { name = 'ultisnips',   max_item_count = 2       },       { name = 'buffer',       max_item_count = 3   },   { name = 'nvim_lua',   max_item_count = 2       },       { name = 'path',       max_item_count = 3   },   { name = 'cmp_tabnine',   max_item_count = 3       },       { name = 'nuspell',       max_item_count = 2   },   { name = 'calc',   max_item_count = 2       },       { name = 'conjure',       max_item_count = 2   },   { name = "latex_symbols",   max_item_count = 2       },   %    { name = 'vim-dadbod-completion',       max_item_count = 2   },   },   formatting = {   &    format = function(entry, vim_item)   )        -- fancy icons and a name of kind   a        vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind       %        -- set a name for each source           vim_item.menu =   
        ({                buffer = "[Buffer]",   %            ultisnips = "[UltiSnip]",               nvim_lsp = "[LSP]",               nvim_lua = "[Lua]",   !            cmp_tabnine = "[TN]",               calc = "[Calc]",   "            conjure = "[Conjure]",                nuspell = "[Spell]",               path = "[Path]",   +            vim_dadbod_completion = "[DB]",   %            latex_symbols = "[Latex]"               })[entry.source.name]           return vim_item       end   }   }5��            �       �               �      �      5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             aB�&     �   !   "          '        ["<CR>"] = cmp.mapping.confirm(5��    !                      �      (               5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             aB�&     �   !   "                      {5��    !                      �                     5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             aB�'     �   !   "          7                behavior = cmp.ConfirmBehavior.Replace,5��    !                      �      8               5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             aB�'     �   !   "                          select = true5��    !                      �                     5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             aB�(     �   !   "                      }5��    !                      �                     5�_�                     "        ����                                                                                                                                                                                                                                                                                                                                                             aB�(    �   !   "          
        ),5��    !                      �                     5��