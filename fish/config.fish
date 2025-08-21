

function fish_greeting
	source ~/.cache/wal/colors.fish
end

function fish_prompt
  
  set -l color_cwd
  set -l prefix
  set -l suffix
  set color_cwd $fish_color_cwd
  set suffix '$'

  # PWD
  set_color $color2
  echo -n (prompt_pwd)
  set_color normal

  printf '%s ' (fish_vcs_prompt)

  set_color normal

  echo -n "$suffix "
end

alias nv "nvim"
alias v "vim"
alias mi "micro"
