require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")

# Put your acceptance spec helpers inside /spec/acceptance/support
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

Capybara.javascript_driver = :webkit_debug
