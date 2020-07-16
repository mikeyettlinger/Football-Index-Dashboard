class ApplicationController < ActionController::Base
    include DashboardsHelper
    include MyPort
      before_action :load_port, :load_transactions, :load_player
end
