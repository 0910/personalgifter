# set path to application
app_dir = "/home/ubuntu/personalgifter/current"
shared_dir = "/home/ubuntu/personalgifter/shared"
working_directory app_dir


# Set unicorn options
worker_processes 2
preload_app true
timeout 30

# Set up socket location
listen "#{shared_dir}/sockets/unicorn.personalgifter.sock", :backlog => 64

# Logging
stderr_path "#{shared_dir}/log/unicorn.stderr.log"
stdout_path "#{shared_dir}/log/unicorn.stdout.log"

# Set master PID location
pid "#{shared_dir}/pids/unicorn.pid"