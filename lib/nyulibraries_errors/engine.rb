module NyulibrariesErrors
  class Engine < ::Rails::Engine
    # So we don't overlap in client namespace
    isolate_namespace NyulibrariesErrors

    # Set engine as exceptions app for client application
    initializer "config.exceptions_app" do |app|
      app.config.exceptions_app = self.routes
    end

    # Add engine stylesheet to precompiled assets
    initializer "config.assets.precompile" do |app|
      app.config.assets.precompile += %w( nyulibraries_errors.css nyulibraries_errors-header.png )
    end

    # Include the view path in the client application
    ActionController::Base.append_view_path(File.join(config.root, 'app/views/nyulibraries_errors'))

    # Include the helper in the client application
    config.to_prepare do
      ApplicationController.helper(ErrorsHelper)
    end

    config.generators do |g|
      g.test_framework :rspec, :fixture => false
      g.assets false
      g.helper false
    end
  end
end
