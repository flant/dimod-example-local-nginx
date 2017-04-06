package node['dimod-example-local-nginx']['nginx_package'] do
  package_version = node['dimod-example-local-nginx']['nginx_package_version']
  version(package_version) if package_version
end
