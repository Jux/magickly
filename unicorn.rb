@dir = "/srv/magickly/"

worker_processes 8
working_directory @dir

listen "#{@dir}tmp/socks/unicorn.sock"
timeout 30
preload_app = true

pid "#{@dir}tmp/pids/unicorn.pid"

stderr_path "#{@dir}log/unicorn.stderr.log"
stdout_path "#{@dir}log/unicorn.stdout.log"