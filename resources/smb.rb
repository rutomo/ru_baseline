resource_name :smb
property :smb_username, String, required: true
property :smb_password, String, required: true
property :mount_network_drive, String, required: true
property :mount_name, String, required: true
property :username, String, required: true

action :create do
  package 'cifs-utils'
  template "/home/#{username}/.smbpasswd" do
    source 'smbpasswd.erb'
    cookbook 'ru_baseline'
    mode '0700'
    owner username
    group username
    variables({
        :username => smb_username,
        :password => smb_password
    })
  end
  bash 'mount_network_drive' do
    user 'root'
    cwd 'root'
    code <<-EOF
      sudo mkdir -p /mnt/#{mount_name}
      sudo echo "#{mount_network_drive} /mnt/#{mount_name}  cifs  credentials=/home/#{username}/.smbpasswd,rw,user,file_mode=0777,dir_mode=0777 0 0" >> /etc/fstab
      mount -a
      EOF
  end
end
