class ContractsController < ActionController::Base
  inherit_resources
  before_filter :authenticate_user!
  layout 'application'

  def create
    create!
    resource.user_id = params[:user_id]
    resource.save!
  end

  private

  def contract_attributes
    [:costs, :cost_interval, :partner, :title, :started_at, :ended_at]
  end

  def permitted_params
    params.permit(:contract => contract_attributes)
  end

  def collection
    @contracts = current_user.contracts.order('ended_at DESC').page(params[:page]).per(7)
  end

end
