if defined?(ChefSpec)

  ChefSpec.define_matcher(:bluepill_service)

  def enable_bluepill_service(service)
    ChefSpec::Matchers::ResourceMatcher.new(:bluepill_service, :enable, service)
  end

  def load_bluepill_service(service)
    ChefSpec::Matchers::ResourceMatcher.new(:bluepill_service, :load, service)
  end

  def reload_bluepill_service(service)
    ChefSpec::Matchers::ResourceMatcher.new(:bluepill_service, :reload, service)
  end

  def start_bluepill_service(service)
    ChefSpec::Matchers::ResourceMatcher.new(:bluepill_service, :start, service)
  end

  def disable_bluepill_service(service)
    ChefSpec::Matchers::ResourceMatcher.new(:bluepill_service, :disable, service)
  end

  def stop_bluepill_service(service)
    ChefSpec::Matchers::ResourceMatcher.new(:bluepill_service, :stop, service)
  end

  def restart_bluepill_service(service)
    ChefSpec::Matchers::ResourceMatcher.new(:bluepill_service, :restart, service)
  end

end
