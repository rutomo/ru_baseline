resource_name :admin
property :username, String, required: true
property :public_keys, Array, required: true
property :home_dir, String, required: true
property :ssh_dir, String, required: true
property :auth_keys, String, required: true

action :create do
  user username do
    comment 'Administrator Account'
    shell '/bin/bash'
    home home_dir
    manage_home true
  end

  template '/etc/sudoers' do
     source 'sudoers.erb'
     cookbook 'ru_baseline'
     user 'root'
     group 'root'
     mode '0440'
  end

  directory ssh_dir do
     recursive true
     mode '0755'
     user username
   	 group username
  end

  file auth_keys do
  	content public_keys.join("\n")
  	mode '0644'
  	user username
  	group username
  end
end
