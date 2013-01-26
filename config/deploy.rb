set :application, "litealloy"
set :domain, "light@178.79.155.190"
set :deploy_to, "/srv/www/#{application}"
set :use_sudo, false

ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa_linode_light")]

set :scm, :git
set :repository,  "git@git.s3n.su:litealloy_ru.git"
set :branch, "master"
set :deploy_via, :remote_cache

role :web, domain
role :app, domain
role :db,  domain, :primary => true

namespace :deploy do
  task :migrate do
    puts "    not doing migrate because not a Rails application."
  end
  task :finalize_update do
    puts "    not doing finalize_update because not a Rails application."
  end
  task :start do
    puts "    not doing start because not a Rails application."
  end
  task :stop do 
    puts "    not doing stop because not a Rails application."
  end
  task :restart do
    puts "    not doing restart because not a Rails application."
  end
end
