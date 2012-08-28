
require_relative "./helpers"

describe_recipe 'bluepill_test::default' do
  include BluepillTestHelpers

  describe "installs nc for usage in the test_app service" do
    let(:package) { package("nc") }
    it { package.must_be_installed }
  end

  describe "create a bluepill configuration file" do
    let(:config) { file(::File.join(node['bluepill']['conf_dir'],
                                    node['bluepill_test']['service_name'] +
                                    ".pill")) }
    it { config.must_exist }

    it "must be valid ruby" do
      assert(shell_out("ruby -c #{config.path}").exitstatus == 0)
    end
  end

  describe "runs the application as a service" do
    let(:service) { bluepill_service(node['bluepill_test']['service_name']) }
    it { service.must_be_enabled }
    it { service.must_be_running }
  end

  describe "spawn a netcat tcp client repeatedly" do
    let(:port) { node['bluepill_test']['tcp_server_listen_port'] }
    let(:secret) { node['bluepill_test']['secret'] }
    it "should receive a TCP connection from netcat" do
      TCPServer.open("localhost", port) do |server|
        client = server.accept
        client_secret = client.gets.strip!
        assert_equal secret, client_secret
        client.close
      end
    end
  end
end
