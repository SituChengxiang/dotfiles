# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Alacritty 环境变量配置
export TERM=xterm-256color                # 确保正确的终端类型
export COLORTERM=truecolor                # 启用真彩色支持
export WINIT_X11_SCALE_FACTOR=1.0        # X11 缩放因子（如果需要）
export WINIT_HIDPI_FACTOR=1.0            # HiDPI 缩放（如果需要）

# 如果使用 NVIDIA 独显，可能需要以下配置
export LIBGL_ALWAYS_SOFTWARE=1            # 使用软件渲染以避免某些图形问题

# Rust 镜像配置
export RUSTUP_UPDATE_ROOT=https://mirrors.aliyun.com/rustup/rustup
export RUSTUP_DIST_SERVER=https://mirrors.aliyun.com/rustup

# zsh插件配置
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# 启用 autojump
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 设置语言环境
export LC_ALL=C

# Go 环境配置
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.io,direct

export GOROOT=/usr/lib/go
export GOPATH=/home/kuan/go
export GOBIN=/home/kuan/go/bin
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"

# GPG 配置
export GPG_TTY=$(tty)

# 键位绑定问题
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

# fnm 配置
export FNM_DIR="/opt/node/versions"
export FNM_NODE_DIST_MIRROR="https://mirrors.cloud.tencent.com/nodejs-release/"

# 初始化 fnm
eval "$(fnm env --use-on-cd)"

# zsh 选项设置
setopt AUTO_CD
setopt APPEND_HISTORY
HISTFILE=~/.zsh_history

# zsh 补全系统
autoload -Uz compinit && compinit

