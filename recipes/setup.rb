file '/etc/nginx/sites-enabled/default' do
  action :delete
end

template '/etc/nginx/sites-enabled/app.conf' do
  source 'nginx.conf.erb'

  proxy_to_port = node['dimod-example-local-nginx']['proxy_to_port']
  raise "dimod-example-local-nginx.proxy_to_port attribute required" unless proxy_to_port
  variables(proxy_to_port: proxy_to_port)

  action :create
end
