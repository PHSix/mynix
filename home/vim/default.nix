{ pkgs, ... }: {
  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      lightline-vim
      catppuccin-vim
      rainbow
      fzf-vim
    ];
    settings = {
      ignorecase = true;
      number = true;
      shiftwidth = 4;
      tabstop = 4;
      expandtab = true;
      smartcase = true;
    };
    extraConfig = ''
      set mouse=a
      set nowrap
      set cursorline
      colorscheme catppuccin_mocha
      noremap ; :
      let g:lightline = {'colorscheme': 'catppuccin_mocha'}
    '';
  };
}
