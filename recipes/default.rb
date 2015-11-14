#
# Cookbook Name:: chef-solr-53
# Recipe:: default
#
# Free and open source
#
unless Dir.exist?("/opt/solr")
	remote_file "/tmp/solr-#{node['solr']['version']}.tgz" do
		source "http://apache.mirrors.tds.net/lucene/solr/#{node['solr']['version']}/solr-#{node['solr']['version']}.tgz"
	end
	
	execute "solr_untar" do
		cwd "/tmp"
		command "tar xzf solr-#{node['solr']['version']}.tgz solr-#{node['solr']['version']}/bin/install_solr_service.sh --strip-components=2"
	end
	
	execute "solr_instal" do
		cwd "/tmp"
		command "./install_solr_service.sh solr-#{node['solr']['version']}.tgz"
	end
end
