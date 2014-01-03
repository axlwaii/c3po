class UsersController < ActionController::Base

  layout 'application'

  def dashboard
    flash[:notice] = "Es besteht kein Handlungsbedarf."
  end

end
