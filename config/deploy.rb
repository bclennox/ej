lock "~> 3.10.2"

set :application, 'ej.bclennox.com'
set :repo_url, 'github-bclennox:bclennox/ej'

append :linked_files, '.rbenv-vars'
append :linked_dirs, 'log', 'tmp/cache', 'public/assets'

set :rbenv_ruby, File.read('.ruby-version').strip

ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
