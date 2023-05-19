# Load DSL and set up stages
require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

require 'capistrano/rails'
require 'capistrano/puma'
require "capistrano/rbenv"
install_plugin Capistrano::Puma
install_plugin Capistrano::Puma::Systemd

set :puma_threads,    [4, 16]
set :puma_workers,    0

set :application, 'nikodyring_dev'
set :stage, :production
set :deploy_via, :remote_cache
set :deploy_to, '/home/deploy/nikodyring_dev'
set :puma_bind, "unix://#{shared_path}/tmp/sockets/nikodyring-puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.access.log"
set :puma_error_log,  "#{release_path}/log/puma.error.log"
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true  # Change to false when not using ActiveRecord
set :puma_service_unit_name, "puma_#{fetch(:application)}_#{fetch(:stage)}"


append :linked_files, "config/master.key"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "public/uploads"

set :rbenv_type, :user
set :rbenv_ruby, '3.1.2'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }