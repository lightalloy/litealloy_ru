set :application, "litealloy_ru"

set :repo_url, 'git@git.s3n.su:light/litealloy_ru.git'
set :user, 'light'

set :deploy_to, '/home/light/sites/litealloy_ru'

set :scm, :git
set :branch, "master"
set :deploy_via, :remote_cache

role :app, %w{s3n.su}
role :web, %w{s3n.su}
role :db,  %w{s3n.su}

# role :app, %w{deploy@example.com}, my_property: :my_value
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
# role :db,  %w{deploy@example.com}

server 's3n.su', user: 'light', roles: %w{web app}#, my_property: :my_value

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
