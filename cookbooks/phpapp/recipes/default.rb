#
# Cookbook Name:: phpapp
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apache2"
include_recipe "php"
include_recipe "php::module_mysql"
include_recipe "apache2::mod_php5"

apache_site "default" do
	enable true
end	

mysql_service 'chef' do
	port '3306'
	version '5.7'
	initial_root_password 'changeme'
	action [:create, :start]
end	