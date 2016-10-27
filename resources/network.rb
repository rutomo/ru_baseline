property :static_ip, String, required: true
property :device_name, String, required: true
property :mask, String, required: true
property :network, String, required: true
property :bcast, String, required: true

ifconfig "#{static_ip}" do
  device "#{device_name}"
  mask "#{mask}"
  network "#{network}"
  bcast "#{bcast}"
  onboot "Yes"
  action :enable
end
