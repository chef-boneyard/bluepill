include_recipe "bluepill"

template ::File.join(node['bluepill']['conf_dir'],
                     node['bluepill_test']['service_name'] + ".pill")

bluepill_service node['bluepill_test']['service_name'] do
  action [:enable, :load, :start]
end
