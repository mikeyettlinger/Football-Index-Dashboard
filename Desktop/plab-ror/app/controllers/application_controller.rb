class ApplicationController < ActionController::Base
    include DashboardsHelper
<<<<<<< HEAD
    include MyPort
      before_action :load_port, :load_transactions, :load_player
=======
>>>>>>> 9566ea77b30166b0a3922b45c0fd50c6f012d007
end
