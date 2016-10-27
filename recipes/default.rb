 #
# Cookbook Name:: ru_baseline
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
apt_update 'all_platforms' do
  frequency 86400
  action :periodic
end

package 'open-vm-tools'
