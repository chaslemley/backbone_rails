module Backbone
  class Railtie < Rails::Railtie
 
    initializer "backbone.initialize" do |app|
      ActiveRecord::Base.include_root_in_json = false
      
      class ActionController::Base
        def self.backbone_controller_for(model)
          @@backbone_model = model

          self.instance_eval do
            self.send(:before_filter, :prepare_params, :only => [:create, :update])
            self.send(:respond_to, :json)
          end

          self.class_eval do
            private

            def prepare_params
              model = @@backbone_model
              params[model.to_sym] ||= eval(model.to_s.capitalize).content_columns.inject({}) { |accum, column| accum[column.name] = params[column.name]; accum }
            end
          end
        end    
      end
    end
  end
end