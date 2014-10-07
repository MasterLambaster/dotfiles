require 'rake'
require 'pathname'

BASE_DIR = Pathname.new(File.join(ENV['HOME'], ".dot"))
PREZTO_DIR  =  BASE_DIR.join("deps/prezto")

desc "Install dot distribution"
task :install => [:check_dependencies, "prezto:install", "vim:install", "git:install"] do
end

desc "Update dot distro"
task :update do
end

desc "Uninstall dot distribution"
task :uninstall => ["prezto:uninstall", "vim:uninstall", "git:uninstall"] do
  warning("Removing .dot")
  cmd("rm -rf $HOME/.zsh.before")
  cmd("rm -rf $HOME/.zsh.after")
  Dir.glob(BASE_DIR.join('zsh/prezto-config/*')).each do |file|
    cmd("rm $HOME/.#{File.basename(file)}")
  end
  cmd("rm ${ZDOTDIR:-$HOME}/.zprezto")
end

namespace :prezto do
  desc "Install Prezto"
  task :install => ["checkout", "update"] do
    section_message("Installing Prezto")

    # Linking
    unless File.exists?(File.join(ENV['HOME'], ".zprezto"))
      info "Linking Prezto"
      cmd %{ ln -nfs "$HOME/.dot/deps/prezto" "${ZDOTDIR:-$HOME}/.zprezto" }
      # Installing commands
      llink(Dir.glob(BASE_DIR.join('zsh/prezto-config/*')))
    end

    info "Creating directories for your customizations"
    cmd "mkdir -p $HOME/.zsh.before"
    cmd "mkdir -p $HOME/.zsh.after"

    # Set ZSH as default shell
    info "Setting zsh as your default shell"
    if ENV["SHELL"].include?('zsh')
      message "Zsh is already set as a default shell"
    else
      cmd "chsh -s /bin/zsh"
    end
  end

  desc "Checkout Perzto"
  task :checkout do
    prezto_repo = "https://github.com/sorin-ionescu/prezto.git"

    if File.exists?(PREZTO_DIR)
      warning("Prezto is already installed, skipping ...")
      next
    end
    cmd("git clone #{prezto_repo} #{PREZTO_DIR}")
    init_submodules(PREZTO_DIR)
    update_submodules(PREZTO_DIR)
  end

  desc "Update prezto"
  task :update do
    update_submodules(PREZTO_DIR)
  end

  desc "Uninstall prezto"
  task :uninstall do

  end
end

namespace :vim do
  desc "Install VIM configuration"
  task :install do
    section_message("Installing Vim")
    info("Linking config file")
    link_file(['vim/vimrc', 'vim/gvimrc'])
    link_file('vim')
    info("Install vundle")
    install_vundle
    info("Install vim plugins")
    install_vundle_plugins
  end

  desc "Uninstall VIM configuration"
  task :uninstall do
  end
end

namespace :git do
  desc "Insall GIT configuration"
  task :install do
    section_message("Installing GIT configuration")
    link_file('git/gitconfig')
  end

  desc "Uninstall GIT configuration"
  task :uninstall do
  end
end

desc "Check .dot install dependencies"
task :check_dependencies do
  deps = []
  section_message "Checking dependencies..."

  info("Checking .dot folder")
  unless BASE_DIR.to_s == File.dirname(__FILE__)
    deps << false
    fatal("Please run script from HOME/.dot folder. Cutsom install folders are not supported yet")
  end

  deps << check_bin('git')
  deps << check_bin('zsh')
  fail('One of the dependencies has not been met, aborting.') if deps.any?{|e| !e}
end

task :default => :install

private
VT100_COLORS = {
  :black => 30,
  :red => 31,
  :green => 32,
  :yellow => 33,
  :blue => 34,
  :magenta => 35,
  :cyan => 36,
  :white => 37
}

def cmd(command)
  puts colorize("[Runing] #{command}", :blue)
  system(command)
end

def check_bin(name)
  info("Checking for #{name}")
  unless system("which #{name} > /dev/null")
    fatal("Failed dependency, #{name} is not found")
    return false
  end
  true
end

# Link file by relative path
def link_file(files)
  Array(files).each do |file|
    file = BASE_DIR.join(file)
    cmd "ln -nfs #{file} #{File.join(ENV['HOME'], "." + File.basename(file))}"
  end
end

def llink(files)
  Array(files).each do |file|
    cmd "ln -nfs #{file} #{ENV['HOME']}/.#{File.basename(file)}"
  end
end

def section_message(message, color = :green)
  puts colorize("-" * 50, color)
  puts colorize(message, color)
  puts colorize("-" * 50, color)
end

def message(message)
  puts colorize("--> #{message}", :yellow)
end

def info(message)
  puts colorize("--> #{message}", :green)
end

def warning(message)
  puts colorize("[Warning!] #{message}", :yellow)
end

def fatal(message)
  puts colorize("[FATAL] #{message}", :red)
end

def colorize(text, color)
  "\e[#{VT100_COLORS[color] || VT100_COLORS[:white]}m#{text}\e[0m"
end

def init_submodules(path)
  cmd %{cd #{path} && git submodule init --recursive}
end

def update_submodules(path)
  cmd %{cd #{path} && git submodule update --init --recursive && git clean -df}
end

def install_vundle
  vundle_path = "https://github.com/Shougo/neobundle.vim"
  cmd("git clone #{vundle_path} #{BASE_DIR.join('.vim/bundle/neobundle')}")
end

def install_vundle_plugins
#  system "vim --noplugin -u #{ENV['HOME']}/.vim/vundles.vim -N \"+set hidden\" \"+syntax on\" +BundleClean +BundleInstall +qall"
  cmd("vim --noplugin -N -e -s -u #{BASE_DIR.join('vim/vundles.vim')} +NeoBundleInstall +qall ")
end

