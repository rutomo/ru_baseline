property :username, String, required: true
property :public_keys, String, required: true

user username do
  comment 'Administrator Account'
  shell '/bin/bash'
  home home_dir
  manage_home true
end

template '/etc/sudoers' do
   source 'sudoers.erb'
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

file ::File.join(ssh_dir, 'authorized_keys') do
	content public_keys.join("\n")
	mode '0644'
	user username
	group username
end
