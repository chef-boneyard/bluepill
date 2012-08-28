include_recipe "bluepill"

template "/etc/bluepill/test_app.pill"

bluepill_service "test_app" do
  action [:enable, :load, :start, :restart, :stop, :disable]
end

