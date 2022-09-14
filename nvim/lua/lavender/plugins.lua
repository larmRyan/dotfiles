
-- Auto install packer if it's not already installed
-- For new installs
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

  -- Package manager
  use ({ 'wbthomason/packer.nvim' })

  -- Requirements
  use ({
    'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup({ default = true, })
    end,
  })

  -- Misc.
  use ({
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  })

  use ({
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end,
  })

  use ({
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('lavender.plugins.indent-blankline')
    end,
  })

  use ({
    'folke/zen-mode.nvim',
    config = function()
      require('lavender.plugins.zen-mode')
    end,
  })
  
  use ({
    'glepnir/dashboard-nvim',
    config = function()
      require('lavender.plugins.dashboard')
    end,
  })

  use ({
    'nvim-telescope/telescope.nvim',
    -- opt = true,
    cmd = 'Telescope',
    config = function()
      require('lavender.plugins.telescope')
    end,
  })

  -- Color schemes
  use ({
    'catppuccin/nvim',
    as = 'catppuccin',
    config = function()
      require('lavender.plugins.catppuccin')
    end,
  })

  -- Tab/Status lines
  use ({
    'akinsho/bufferline.nvim',
    tag = 'v2.*',
    config = function()
      require('lavender.plugins.bufferline')
    end,
  })

  use ({
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lavender.plugins.lualine')
    end,
  })

  -- Syntax Highlighting
  use ({
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('lavender.plugins.nvim-treesitter')
    end,
  })

  use ({
    'p00f/nvim-ts-rainbow',
  })

  -- File management
  use ({
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('lavender.plugins.nvim-tree')
    end,
  })

  use ({
    'neovim/nvim-lspconfig',
  })

  use ({
    'williamboman/mason-lspconfig.nvim',
    after = 'nvim-lspconfig',
  })

  use ({
    'williamboman/mason.nvim',
    after = 'mason-lspconfig.nvim',
    config = function()
      require('lavender.plugins.lsp')
    end,
  })

  use ({
    'ms-jpq/coq_nvim',
    config = function()
      require('lavender.plugins.coq')
    end,
  })

end)