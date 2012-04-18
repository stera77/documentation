log_level          :debug

#log_location       STDOUT
log_location "/var/log/chef/client.log"

ssl_verify_mode    :verify_none

chef_server_url "CHEF_ENDPOINT"

file_cache_path    "/var/cache/chef"

file_backup_path   "/var/lib/chef/backup"

pid_file           "/var/run/chef/client.pid"

cache_options({ :path => "/var/cache/chef/checksums", :skip_expires => true})

signing_ca_user "chef"

Mixlib::Log::Formatter.show_time = true

validation_client_name 'VALIDATOR'
