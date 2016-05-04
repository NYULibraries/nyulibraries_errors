module NyulibrariesErrors
  class Engine < ::Rails::Engine
    # isolate_namespace NyulibrariesErrors

    initializer "config.exceptions_app" do |app|
      app.config.exceptions_app = self.routes
    end
    
    config.autoload_paths += %W(#{config.root}/app/views/layouts)
    config.autoload_paths += Dir["#{config.root}/app/views/layouts/**/"]
  end
end
