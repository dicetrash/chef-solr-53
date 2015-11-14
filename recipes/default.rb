#
# Cookbook Name:: chef-solr-53
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
remote_file "/tmp/solr-#{node['solr']['version']}.tgz" do
  source "http://apache.mirrors.tds.net/lucene/solr/#{node['solr']['version']}/solr-#{node['solr']['version']}.tgz"
end

#tarball_x "/tmp/solr.tar.gz" do
#  destination "/tmp/solr"
#  owner 'root'
#  group 'root'
#  action :extract
#end

execute "solr_untar" do
  cwd "/tmp"
  command "tar xzf solr-#{node['solr']['version']}.tgz solr-#{node['solr']['version']}/bin/install_solr_service.sh --strip-components=2"
end

execute "solr_instal" do
  cwd "/tmp"
  command "./install_solr_service.sh solr-#{node['solr']['version']}.tgz"
end
