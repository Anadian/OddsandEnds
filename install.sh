#!/bin/bash
#install.sh
#npm global dependencies.
npm i -g shelljs inquirer;
#scripts/bash
chmod 777 'scripts/bash/clang-linker-info.sh';
ln -f 'scripts/bash/clang-linker-info.sh' /usr/local/bin/clang-linker-info;
chmod 777 'scripts/bash/clang-predefined-macros.sh';
ln -f 'scripts/bash/clang-predefined-macros.sh' /usr/local/bin/clang-predefined-macros;
chmod 777 'scripts/bash/clang-search-paths.sh';
ln -f 'scripts/bash/clang-search-paths.sh' /usr/local/bin/clang-search-paths;
chmod 777 'scripts/bash/clense-bad-roms.sh';
ln -f 'scripts/bash/clense-bad-roms.sh' /usr/local/bin/clense-bad-roms;
chmod 777 'scripts/bash/create-c-project-directories.sh';
ln -f 'scripts/bash/create-c-project-directories.sh' /usr/local/bin/create-c-project-directories;
#chmod 777 'scripts/bash/create-github-project.sh';
#ln -f 'scripts/bash/create-github-project.sh' /usr/local/bin/create-github-project;
chmod 777 'scripts/bash/create-node-project-directories.sh';
ln -f 'scripts/bash/create-node-project-directories.sh' /usr/local/bin/create-node-project-directories;
chmod 777 'scripts/bash/create-node-project-directory.sh';
ln -f 'scripts/bash/create-node-project-directory.sh' /usr/local/bin/create-node-project-directory;
chmod 777 'scripts/bash/empty-dir.sh';
ln -f 'scripts/bash/empty-dir.sh' /usr/local/bin/empty-dir;
chmod 777 'scripts/bash/exp_files.sh';
ln -f 'scripts/bash/exp_files.sh' /usr/local/bin/exp_files;
chmod 777 'scripts/bash/full-path.sh';
ln -f 'scripts/bash/full-path.sh' /usr/local/bin/full-path;
chmod 777 'scripts/bash/gcc-predefined-macros.sh';
ln -f 'scripts/bash/gcc-predefined-macros.sh' /usr/local/bin/gcc-predefined-macros;
chmod 777 'scripts/bash/gcc-search-paths.sh';
ln -f 'scripts/bash/gcc-search-paths.sh' /usr/local/bin/gcc-search-paths;
chmod 777 'scripts/bash/getrom.sh';
ln -f 'scripts/bash/getrom.sh' /usr/local/bin/getrom;
chmod 777 'scripts/bash/git-current.sh';
ln -f 'scripts/bash/git-current.sh' /usr/local/bin/git-current;
chmod 777 'scripts/bash/git-lazy.sh';
ln -f 'scripts/bash/git-lazy.sh' /usr/local/bin/git-lazy;
chmod 777 'scripts/bash/git-update.sh';
ln -f 'scripts/bash/git-update.sh' /usr/local/bin/git-update;
chmod 777 'scripts/bash/gnome-screen-idle-delay.sh';
ln -f 'scripts/bash/gnome-screen-idle-delay.sh' /usr/local/bin/gnome-screen-idle-delay;
chmod 777 'scripts/bash/gnome-screen-idle-delay-10.sh';
ln -f 'scripts/bash/gnome-screen-idle-delay-10.sh' /usr/local/bin/gnome-screen-idle-delay-10;
chmod 777 'scripts/bash/gnome-screen-idle-delay-600.sh';
ln -f 'scripts/bash/gnome-screen-idle-delay-600.sh' /usr/local/bin/gnome-screen-idle-delay-600;
chmod 777 'scripts/bash/init-go-project.sh';
ln -f 'scripts/bash/init-go-project.sh' /usr/local/bin/init-go-project;
chmod 777 'scripts/bash/mac-idle-time.sh';
ln -f 'scripts/bash/mac-idle-time.sh' /usr/local/bin/mac-idle-time;
chmod 777 'scripts/bash/profilerc.sh';
ln -f 'scripts/bash/profilerc.sh' ~/.profilerc;
chmod 777 'scripts/bash/searchrom.sh';
ln -f 'scripts/bash/searchrom.sh' /usr/local/bin/searchrom;
#chmod 777 'scripts/bash/init-node-project.sh';
#ln -f 'scripts/bash/init-node-project.sh' /usr/local/bin/init-node-project;
chmod 777 'scripts/bash/git-fatfiles.sh';
ln -f 'scripts/bash/git-fatfiles.sh' /usr/local/bin/git-fatfiles;
chmod 777 'scripts/bash/git-listobjectsbysize.sh';
ln -f 'scripts/bash/git-listobjectsbysize.sh' /usr/local/bin/git-listobjectsbysize;
#scripts/vim
chmod 777 'scripts/vim/expansions.vim';
ln -f 'scripts/vim/expansions.vim' ~/.expansions;
chmod 777 'scripts/vim/external_expand.vim';
ln -f 'scripts/vim/external_expand.vim' ~/.external_expand;
#scripts/node
chmod 777 'scripts/node/create-github-project.js';
ln -f 'scripts/node/create-github-project.js' /usr/local/bin/create-github-project;
chmod 777 'scripts/node/init-node-project.js';
ln -f 'scripts/node/init-node-project.js' /usr/local/bin/init-node-project;
#config
chmod 777 'config/vimrc';
ln -f config/vimrc ~/.vimrc;
chmod 777 'config/nvim_init.vim';
mkdir -p ~/.config/nvim;
ln -f config/nvim_init.vim ~/.config/nvim/init.vim;
