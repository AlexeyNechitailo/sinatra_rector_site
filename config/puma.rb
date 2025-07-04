workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['MAX_THREADS'] || 5)
threads threads_count, threads_count

app_dir = File.expand_path("../..", __FILE__)
shared_dir = "#{app_dir}/tmp"

preload_app!

port        ENV['PORT']     || 9292
rack_env = ENV['RACK_ENV'] || "production"
environment rack_env

# Set up socket location
bind "unix://#{shared_dir}/puma.sock"

# Logging
stdout_redirect "#{app_dir}/log/puma.stdout.log", "#{app_dir}/log/puma.stderr.log", true

# Set master PID and state locions
pidfile "#{shared_dir}/puma.pid"
state_path "#{shared_dir}/puma.state"
