class ApplicationController < ActionController::Base
    include DashboardsHelper
    include MyPort
      before_action :load_port
end
