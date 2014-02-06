@dir == "/home/collinti/workspace/magickly/"

worker_processes 2
working_directory @dir

listen "0.0.0.0:3030"
timeout 30

pid "#{@dir}tmp/pids/unicorn.pid"

stderr_path "#{@dir}log/unicorn.stderr.log"
stdout_path "#{@dir}log/unicorn.stdout.log"