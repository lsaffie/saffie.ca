require 'bundler/capistrano'

## This get cap to see my bundled gems
$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"                  # Load RVM's capistrano plugin.
set :rvm_ruby_string, '1.9.2'        # Or whatever env you want it to run in.
#################

set :application, "saffie.ca"
set :repository,  "git@github.com:lsaffie/saffie.ca.git"

set :scm, :git

role :web, "www.saffie.ca"
role :app, "www.saffie.ca"
role :db,  "www.saffie.ca", :primary => true
role :db,  "www.saffie.ca"

set :user, "deploy"
set :use_sudo, false
set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :remote_cache
ssh_options[:forward_agent] = true
default_run_options[:pty] = true
