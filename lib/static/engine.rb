module Static
  class Engine < Rails::Engine
    isolate_namespace Static

    config.generators do |g|
      g.orm             :mongoid
      g.template_engine :haml
      g.test_framework  :rspec
    end

    # The main app should be able to use the engine's helpers

    initializer "static.grant_helper_access" do |app|
      ActiveSupport.on_load(:action_controller) do
        helper Static::Engine.helpers
      end
    end

  end
end
