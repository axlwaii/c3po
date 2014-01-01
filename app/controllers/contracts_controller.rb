class ContractsController < ActionController::Base
  inherit_resources
  before_filter :authenticate_user!
  layout 'application'

  private

  def contract_attributes
    [:partner, :title, :started_at, :ended_at]
  end

  def permitted_params
    params.permit(:contract => contract_attributes)
  end

  def collection
    @contracts = Contract.order('ended_at DESC')
  end

end
