@dir = "/srv/magickly/"
@tmp_dir = "/srv/tmp"

worker_processes 8
working_directory @dir

listen "#{@tmp_dir}/magickly.sock"
timeout 30
preload_app = true

pid "#{@tmp_dir}/magickly.pid"

stderr_path "#{@tmp_dir}/magickly.stderr.log"
stdout_path "#{@tmp_dir}/magickly.stdout.log"