require_relative "./helpers"

describe_recipe 'bluepill_test::default' do
  include BluepillTestHelpers
  
  describe "create a bluepill configuration file" do
    let(:config) { file(::File.join(node['bluepill']['conf_dir'],
                                    node['bluepill_test']['service_name'] +
                                    ".pill" )) }
    it { config.must_exist }
  end

  describe "runs the application as a service" do
    let(:service) { bluepill_service(node['bluepill_test']['service_name']) }
    it { service.must_be_running }
    it { service.must_be_enabled }
  end
end
