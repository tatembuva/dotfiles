let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
let g:startify_bookmarks = [
            \ { 'c': '~/code' },
            \ { 'n': '~/code/dotfiles/nvim/init.vim' },
            \ { 'f': '~/.config/fish/config.fish' },
            \ { 't': '~/.config/kitty/kitty.conf' },
            \ ]
let g:startify_session_autoload = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_custom_header = [
            \"                        _       ",
            \"                       / /\\     ",
            \"                      / /  \\    ",
            \"                     / / /\\ \\  ",
            \"                    / / /\\ \\ \\  ",
            \"                   / / /  \\ \\_\\ ",
            \"                   \\/_/    \\/_/ ",
            \"",
            \"              nvim super-ultra config                   ",
            \"                      ->2020<-                   ",
            \]
" let g:startify_custom_header = [
"             \"   __             __              __       ___     ",
"             \"  /\\ \\__         /\\ \\__         /'_ `\\   /'___`\\   ",
"             \"  \\ \\ ,_\\    __  \\ \\ ,_\\    __ /\\ \\L\\ \\ /\\_\\ /\\ \\  ",
"             \"   \\ \\ \\/  /'__`\\ \\ \\ \\/  /'__`\\ \\___, \\\\/_/// /__ ",
"             \"    \\ \\ \\_/\\ \\L\\.\\_\\ \\ \\_/\\  __/\\/__,/\\ \\  // /_\\ \\",
"             \"     \\ \\__\\ \\__/.\\_\\\\ \\__\\ \\____\\    \\ \\_\\/\\______/",
"             \"      \\/__/\\/__/\\/_/ \\/__/\\/____/     \\/_/\\/_____/ ",
"             \"",
"             \"                nvim super-ultra config                   ",
"             \"                       ->2020<-                   ",
"             \]
