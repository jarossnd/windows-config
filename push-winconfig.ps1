
Write-Host "Backing up local Neovim init.vim file to init.vim.bak"
Copy-Item ~\AppData\Local\nvim\init.vim ~\AppData\Local\nvim\init.vim.bak
Write-Host "Copying over the current Neovim init.vim config file"
Copy-Item ~\repos\windows-config\nvim\init.vim ~\AppData\Local\nvim\init.vim
