describe_recipe 'bluepill_test::default' do
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  describe "create a bluepill configuration file" do
    it "creates a pillfile" do
      let(:config) { file(::File.join(node['bluepill']['conf_dir'],
                                      node['bluepill_test']['service_name'] +
                                      ".pill" )) }
      it { config.must_exist }
      it { config.must_have(:mode, "644") }
      it { config.must_have(:owner, "root") }
      it { config.must_have(:group, "root") }
    end
  end

  describe "runs the application as a service" do
    it "has the bluepills service running and enabled" do
      let(:service) { service(node['bluepill_test']['service_name']) }
      it { service.must_be_running }
      it { service.must_be_enabled }
    end
  end
end
