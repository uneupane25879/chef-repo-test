package 'nginx' do
  action :install
end

service 'nginx' do
  action [ :enable, :start]
end

cookbook_file "/var/www/html/index.html" do
  source "index.html"
  mode "0644"
end