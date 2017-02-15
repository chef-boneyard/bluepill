#
# Cookbook:: bluepill
# Library:: matchers
#
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

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
