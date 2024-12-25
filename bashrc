#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alacritty 环境变量配置
export TERM=xterm-256color                # 确保正确的终端类型
export COLORTERM=truecolor                # 启用真彩色支持
export WINIT_X11_SCALE_FACTOR=1.0        # X11 缩放因子
export WINIT_HIDPI_FACTOR=1.0            # HiDPI 缩放

# 如果使用 NVIDIA 独显，可能需要以下配置
export LIBGL_ALWAYS_SOFTWARE=1            # 使用软件渲染以避免某些图形问题

# 应用程序别名
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# 设置命令行提示符样式 (可选)
PS1='[\u@\h \W]\$ '

# Go 环境配置
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.io,direct

# Rust 镜像配置
export RUSTUP_UPDATE_ROOT=https://mirrors.aliyun.com/rustup/rustup
export RUSTUP_DIST_SERVER=https://mirrors.aliyun.com/rustup

# 启用 autojump
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

# 设置语言环境
export LC_ALL=C

# fnm 配置
export FNM_DIR="/opt/node/versions"
export FNM_NODE_DIST_MIRROR="https://mirrors.cloud.tencent.com/nodejs-release/"

# 初始化 fnm
eval "$(fnm env --use-on-cd)"

# GPG 配置
export GPG_TTY=$(tty)

# 启用一些有用的 bash 选项
shopt -s autocd
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000