vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth=1', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

require('packer').startup(
{
  function(use)

    --use 'https://github.com.cnpmjs.org/ludovicchabant/vim-gutentags'
    use 'https://github.com.cnpmjs.org/skywind3000/gutentags_plus'
    -- vim 文本编辑器的精确颜色方案
    use 'https://github.com.cnpmjs.org/altercation/vim-colors-solarized'
    -- 配色方案
    use 'https://github.com.cnpmjs.org/tomasr/molokai'
        -- 深蓝色背景配色方案
    use 'https://github.com.cnpmjs.org/vim-scripts/phd'
    use 'https://github.com.cnpmjs.org/powerline/powerline'
        -- c++语法高亮显示(包括c++ 11/14/17)
    use 'https://github.com.cnpmjs.org/octol/vim-cpp-enhanced-highlight'
        -- 可视化显示在代码的缩进级别
    use 'https://github.com.cnpmjs.org/nathanaelkane/vim-indent-guides'
        -- switching between companion source files (e.g. ".h-- and ".cpp")
    use 'https://github.com.cnpmjs.org/derekwyatt/vim-fswitch'
        -- toggle, display and navigate marks
    use 'https://github.com.cnpmjs.org/kshenoy/vim-signature'
        -- Easily Highlight Lines with Marks, and Add/Remove Marks
    use 'https://github.com.cnpmjs.org/vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
        -- <Leader> ta 就是用这个插件
    use 'https://github.com.cnpmjs.org/majutsushi/tagbar'
        -- indexing all files in project with ctags
    use 'https://github.com.cnpmjs.org/vim-scripts/indexer.tar.gz'
        -- Just a library for some scripts
    use 'https://github.com.cnpmjs.org/vim-scripts/DfrankUtil'
        -- managing options for different projects
    use 'https://github.com.cnpmjs.org/vim-scripts/vimprj'
        -- support asynchronous searching, and lets you edit file in-place with Edit Mode.
    use 'https://github.com.cnpmjs.org/dyng/ctrlsf.vim'
        -- Multiple cursors plugin
    --use 'https://github.com.cnpmjs.org/mg979/vim-visual-multi'
        -- Vim plug for intensely nerdy commenting powers
    use 'https://github.com.cnpmjs.org/preservim/nerdcommenter'
        -- Ascii drawing plugin: lines, ellipses, arrows, fills, and more!
    use 'https://github.com.cnpmjs.org/vim-scripts/DrawIt'
        -- The ultimate snippet solution for Vim
    use 'https://github.com.cnpmjs.org/SirVer/ultisnips'
    -- Snippets are separated from the engine. Add this if you want them
    use 'https://github.com.cnpmjs.org/honza/vim-snippets'
        -- pulling in C++ function prototypes into implementation files
    use 'https://github.com.cnpmjs.org/derekwyatt/vim-protodef'
        -- A tree explorer plugin for vim
    use 'https://github.com.cnpmjs.org/scrooloose/nerdtree'
        -- Elegant buffer explorer - takes very little screen space
    use 'https://github.com.cnpmjs.org/fholgado/minibufexpl.vim'
        -- Smart selection of the closest text object
    use 'https://github.com.cnpmjs.org/gcmt/wildfire.vim'
        -- A git mirror of gundo.vim
    use 'https://github.com.cnpmjs.org/sjl/gundo.vim'
        -- Instant Markdown previews from VIm!
    use 'https://github.com.cnpmjs.org/suan/vim-instant-markdown'
        -- keep and restore fcitx state when leaving/re-entering insert mode
    --use 'https://github.com.cnpmjs.org/lilydjwg/fcitx.vim'
        -- Run interactive commands inside a Vim buffer
    use 'https://github.com.cnpmjs.org/lrvick/Conque-Shell'
        -- text using the same key combination.
    use 'https://github.com.cnpmjs.org/terryma/vim-expand-region'
        -- A command-line fuzzy finder
    use 'https://github.com.cnpmjs.org/junegunn/fzf'
        -- ring motion and visual selection to the :grep command
    use 'https://github.com.cnpmjs.org/inside/vim-grep-operator'
        -- Go development plugin for Vim
    use 'https://github.com.cnpmjs.org/fatih/vim-go'
        -- Vim compiler plugin for Go (golang)
    use 'https://github.com.cnpmjs.org/rjohnsondev/vim-compiler-go'
        -- 两个字符快速跳转
    --use 'https://github.com.cnpmjs.org/justinmk/vim-sneak'
        -- 异步翻译
    use 'https://github.com.cnpmjs.org/voldikss/vim-translate-me'
        -- 使用方法 :DirDiff <dir1> <dir2>
    use 'https://github.com.cnpmjs.org/will133/vim-dirdiff'

    use 'https://hub.fastgit.org/wbthomason/packer.nvim'

    -- nvim-lsp configuration
    use 'https://hub.fastgit.org/neovim/nvim-lspconfig'

    -- auto-completion engine
    use 'https://hub.fastgit.org/hrsh7th/nvim-compe'

    -- Python syntax highlighting and more
    if (vim.g.is_mac == 1) or (vim.g.is_win == 1) then
      use {'https://hub.fastgit.org/numirias/semshi', run = ':UpdateRemotePlugins', ft = 'python'}
    end

    -- Python indent (follows the PEP8 style)
    use {'https://hub.fastgit.org/Vimjas/vim-python-pep8-indent', ft = {'python', }}

    -- Python-related text object
    use {'https://hub.fastgit.org/jeetsukumaran/vim-pythonsense', ft = {'python'}}

    use 'https://hub.fastgit.org/machakann/vim-swap'
    -- IDE for Lisp
    if fn.executable('sbcl') > 0 then
      -- use 'https://hub.fastgit.org/kovisoft/slimv'
      use {'https://hub.fastgit.org/vlime/vlime', rtp = 'vim/', ft={'lisp', }}
    end

    -- Super fast movement with vim-sneak
    use 'https://hub.fastgit.org/justinmk/vim-sneak'

    -- Clear highlight search automatically for you
    use 'https://hub.fastgit.org/romainl/vim-cool'

    -- Show current search term in different color
    use 'https://hub.fastgit.org/PeterRincker/vim-searchlight'

    -- Show match number for incsearch
    use 'https://hub.fastgit.org/osyo-manga/vim-anzu'

    -- Stay after pressing * and search selected text
    use 'https://hub.fastgit.org/haya14busa/vim-asterisk'

    -- File search, tag search and more
    if vim.g.is_win == 1 then
      use 'https://hub.fastgit.org/Yggdroot/LeaderF'
    else
      use {'https://hub.fastgit.org/Yggdroot/LeaderF', run = ':LeaderfInstallCExtension'}
    end

    -- Another similar plugin is command-t
    -- use 'https://hub.fastgit.org/wincent/command-t'

    -- Another grep tool (similar to Sublime Text Ctrl+Shift+F)
    -- use 'https://hub.fastgit.org/dyng/ctrlsf.vim'

    -- A greping tool
    -- use {'https://hub.fastgit.org/mhinz/vim-grepper', cmd = {'Grepper', '<plug>(GrepperOperator)'}}

    -- A list of colorscheme plugin you may want to try. Find what suits you.
    use 'https://hub.fastgit.org/lifepillar/vim-gruvbox8'
    use 'https://hub.fastgit.org/ajmwagar/vim-deus'
    use 'https://hub.fastgit.org/lifepillar/vim-solarized8'
    use 'https://hub.fastgit.org/joshdick/onedark.vim'
    use 'https://hub.fastgit.org/KeitaNakamura/neodark.vim'
    use 'https://hub.fastgit.org/sainnhe/edge'
    use 'https://hub.fastgit.org/sainnhe/sonokai'
    use 'https://hub.fastgit.org/sainnhe/gruvbox-material'
    use 'https://hub.fastgit.org/shaunsingh/nord.nvim'

    -- colorful status line and theme
    use {'https://hub.fastgit.org/vim-airline/vim-airline', event = 'VimEnter'}
    use {'https://hub.fastgit.org/vim-airline/vim-airline-themes', event = 'VimEnter'}
    use {'https://hub.fastgit.org/mhinz/vim-startify', event = 'VimEnter'}

    use {'https://hub.fastgit.org/lukas-reineke/indent-blankline.nvim'}

    -- Highlight URLs inside vim
    use 'https://hub.fastgit.org/itchyny/vim-highlighturl'

    -- For Windows and Mac, we can open an URL in the browser. For Linux, it may
    -- not be possible since we maybe in a server which disables GUI.
    if (vim.g.is_win == 1) or (vim.g.is_mac == 1) then
      -- open URL in browser
      use 'https://hub.fastgit.org/tyru/open-browser.vim'
    end

    -- Only install these plugins if ctags are installed on the system
    if fn.executable('ctags') > 0 then
      -- plugin to manage your tags
      use 'https://hub.fastgit.org/ludovicchabant/vim-gutentags'
      -- show file tags in vim window
      use 'https://hub.fastgit.org/liuchengxu/vista.vim'
    end

    -- Snippet engine and snippet template
    --use {'https://hub.fastgit.org/SirVer/ultisnips', event = {'InsertEnter'}}
    --use {'https://hub.fastgit.org/honza/vim-snippets', event = {'InsertEnter'}}

    -- Automatic insertion and deletion of a pair of characters
    use 'https://hub.fastgit.org/jiangmiao/auto-pairs'

    -- Comment plugin
    use 'https://hub.fastgit.org/tpope/vim-commentary'

    -- Multiple cursor plugin like Sublime Text?
    -- use 'https://hub.fastgit.org/mg979/vim-visual-multi'

    -- Title character case
    use 'https://hub.fastgit.org/christoomey/vim-titlecase'

    -- Autosave files on certain events
    use 'https://hub.fastgit.org/907th/vim-auto-save'

    -- Show undo history visually
    use 'https://hub.fastgit.org/simnalamburt/vim-mundo'

    -- Manage your yank history
    if (vim.g.is_win == 1) or (vim.g.is_mac == 1) then
      use 'https://hub.fastgit.org/svermeulen/vim-yoink'
    end

    -- Handy unix command inside Vim (Rename, Move etc.)
    use 'https://hub.fastgit.org/tpope/vim-eunuch'

    -- Repeat vim motions
    use 'https://hub.fastgit.org/tpope/vim-repeat'

    -- Show the content of register in preview window
    -- Plug 'junegunn/vim-peekaboo'
    use {'https://hub.fastgit.org/jdhao/better-escape.vim', event = {'InsertEnter', }}

    if vim.g.is_mac == 1 then
      use {'https://hub.fastgit.org/lyokha/vim-xkbswitch', event = {'InsertEnter', }}
    elseif vim.g.is_win == 1 then
      use {'https://hub.fastgit.org/Neur1n/neuims', event = {'InsertEnter', }}
    end

    -- Syntax check and make
    -- use 'https://hub.fastgit.org/neomake/neomake'

    -- Another linting plugin
    use 'https://hub.fastgit.org/dense-analysis/ale'

    -- Auto format tools
    use {'https://hub.fastgit.org/sbdchd/neoformat', cmd = {'Neoformat', }}
    -- use 'https://hub.fastgit.org/Chiel92/vim-autoformat'

    -- Show git change (change, delete, add) signs in vim sign column
    use 'https://hub.fastgit.org/mhinz/vim-signify'
    -- Another similar plugin
    -- use 'https://hub.fastgit.org/airblade/vim-gitgutter'

    -- Git command inside vim
    use 'https://hub.fastgit.org/tpope/vim-fugitive'

    -- Another markdown plugin
    use {'https://hub.fastgit.org/plasticboy/vim-markdown', ft = {'markdown', }}

    -- Faster footnote generation
    use {'https://hub.fastgit.org/vim-pandoc/vim-markdownfootnotes', ft = {'markdown', }}

    -- Vim tabular plugin for manipulate tabular, required by markdown plugins
    use {'https://hub.fastgit.org/godlygeek/tabular', cmd = {'Tabularize'}}

    -- Markdown JSON header highlight plugin
    use {'https://hub.fastgit.org/elzr/vim-json', ft = {'json', 'markdown'}}

    -- Markdown previewing (only for Mac and Windows)
    if (vim.g.is_win == 1) or (vim.g.is_mac == 1) then
      use {'https://hub.fastgit.org/iamcco/markdown-preview.nvim', run = function() fn['mkdp#util#install']() end, ft = {'markdown'}}
    end

    if vim.g.is_mac == 1 then
      use {'https://hub.fastgit.org/rhysd/vim-grammarous', ft = {'markdown', }}
    end

    use 'https://hub.fastgit.org/chrisbra/unicode.vim'

    -- Additional powerful text object for vim, this plugin should be studied
    -- carefully to use its full power
    use 'https://hub.fastgit.org/wellle/targets.vim'

    -- Plugin to manipulate characer pairs quickly
    -- use 'https://hub.fastgit.org/tpope/vim-surround'
    use 'https://hub.fastgit.org/machakann/vim-sandwich'

    -- Add indent object for vim (useful for languages like Python)
    use 'https://hub.fastgit.org/michaeljsmith/vim-indent-object'

    -- Only use these plugin on Windows and Mac and when LaTeX is installed
    if ( vim.g.is_win == 1 or vim.g.is_mac ==1 ) and fn.executable('latex') > 0 then
      -- vimtex use autoload feature of Vim, so it is not necessary to use `for`
      -- keyword of vim-plug to try to lazy-load it,
      -- see https://github.com/junegunn/vim-plug/issues/785
      use {'https://hub.fastgit.org/lervag/vimtex', ft = {'tex', }}

      -- use {'https://hub.fastgit.org/matze/vim-tex-fold', ft = {'tex', }}
      -- use 'https://hub.fastgit.org/Konfekt/FastFold'
    end

    -- Since tmux is only available on Linux and Mac, we only enable these plugins
    -- for Linux and Mac
    if fn.executable('tmux') > 0 then
      -- Let vim detect tmux focus event correctly, see
      -- https://github.com/neovim/neovim/issues/9486 and
      -- https://vi.stackexchange.com/q/18515/15292
      use 'https://hub.fastgit.org/tmux-plugins/vim-tmux-focus-events'

      -- .tmux.conf syntax highlighting and setting check
      use {'https://hub.fastgit.org/tmux-plugins/vim-tmux', ft = {'tmux', }}
    end

    -- Modern matchit implementation
    use {'https://hub.fastgit.org/andymass/vim-matchup', event = {'VimEnter',}}

    -- Smoothie motions
    use 'https://hub.fastgit.org/psliwka/vim-smoothie'

    use 'https://hub.fastgit.org/tpope/vim-scriptease'

    -- Asynchronous command execution
    use {'https://hub.fastgit.org/skywind3000/asyncrun.vim', opt = true, cmd = {'AsyncRun', }}
    -- Another asynchronous plugin
    -- Plug 'tpope/vim-dispatch'
    use {'https://hub.fastgit.org/cespare/vim-toml', ft = {'toml',}}

    -- Edit text area in browser using nvim
    if (vim.g.is_win == 1) or (vim.g.is_mac == 1) then
      use {'https://hub.fastgit.org/glacambre/firenvim', run = function() fn['firenvim#install'](0) end}
    end

    -- Debugger plugin
    if (vim.g.is_win == 1) or (vim.g.is_linux == 1) then
      use {'https://hub.fastgit.org/sakhnik/nvim-gdb', run = {'bash install.sh'}}
    end

    -- Session management plugin
    use 'https://hub.fastgit.org/tpope/vim-obsession'

    -- Calculate statistics for visual selection
    use 'https://hub.fastgit.org/wgurecky/vimSum'

    if vim.g.is_linux == 1 then
      use 'https://hub.fastgit.org/ojroques/vim-oscyank'
    end

    -- REPL for nvim
    use 'https://hub.fastgit.org/hkupty/iron.nvim'

    -- Show register content
    use "tversteeg/registers.nvim"
  end,
  config = {
    max_jobs = 16,
  }
})
