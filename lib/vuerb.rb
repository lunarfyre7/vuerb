require "vuerb/version"

if RUBY_ENGINE == 'opal'
  require 'vuerb/core.rb'
else
  require 'opal'
  Opal.append_path File.expand_path('..', __FILE__).untaint
end