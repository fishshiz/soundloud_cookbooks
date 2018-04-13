default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "6.10.1"
default['nodejs']['npm']['version'] = "5.2.0"
default['nginx']['default_site_enabled'] = false

default[:soundloud][:git_repository] = "https://github.com/fishshiz/soundloud/"
default[:soundloud][:git_revision] = "master"
default[:soundloud][:path] = "/opt/soundloud"

default[:soundloud][:rails_env] = "production"
default[:soundloud][:log_to_stdout] = "true"

default[:soundloud][:environment] = {
  "SECRET_KEY_BASE": node[:soundloud][:secret_key_base],
  "DATABASE_URL": node[:soundloud][:database_url],
  "RAILS_ENV": node[:soundloud][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:soundloud][:log_to_stdout],
  "S3_BUCKET": node[:soundloud][:s3_bucket],
  "S3_REGION": node[:soundloud][:s3_region],
  "S3_ACCESS_REGION": node[:soundloud][:s3_access_region],
  "S3_SECRET_ACCESS_KEY": node[:soundloud][:s3_secret_access_key]
}

default[:soundloud][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"