#
# Cookbook Name:: chef-solr-53
# Recipe:: default
#
# Free and open source
#
unless Dir.exist?("/opt/solr")
	remote_file Chef::Config[:file_cache_path] + "/solr-#{node['solr']['version']}.tgz" do
		source "http://apache.mirrors.tds.net/lucene/solr/#{node['solr']['version']}/solr-#{node['solr']['version']}.tgz"
	end
	
	execute "solr_untar" do
		cwd Chef::Config[:file_cache_path]
		command "tar xzf solr-#{node['solr']['version']}.tgz solr-#{node['solr']['version']}/bin/install_solr_service.sh --strip-components=2"
	end
	
	execute "solr_instal" do
		cwd Chef::Config[:file_cache_path]
		command "./install_solr_service.sh solr-#{node['solr']['version']}.tgz"
	end
	
	file Chef::Config[:file_cache_path] + "/install_solr_service.sh" do
		action :delete
	end
	
	file Chef::Config[:file_cache_path] + "/solr-#{node['solr']['version']}.tgz" do
		action :delete
	end
end
