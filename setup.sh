cp ./.tmux.conf ~/.tmux.conf

nvim -c :PackerInstall

sh ~/.tmux/plugins/tpm/bin/install_plugins

cp ./treemux_init.lua ~/.tmux/plugins/treemux/configs/treemux_init.lua 
