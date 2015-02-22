USER = 'berlin'

worker_processes 2

working_directory "/home/#{USER}/apteka/current"

listen "/home/#{USER}/apteka/current/tmp/sockets/unicorn.apteka.sock", :backlog => 64

pid "/home/#{USER}/apteka/current/tmp/pids/unicorn.apteka.pid"

preload_app true

stderr_path "/home/#{USER}/apteka/current/log/unicorn.stdout.log"
stdout_path "/home/#{USER}/apteka/current/log/unicorn.stdout.log"


after_fork do |server, worker|
  ActiveRecord::Base.establish_connection
end
