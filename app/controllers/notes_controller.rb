class NotesController < ActionController::Base
  inherit_resources
  before_filter :authenticate_user!
  layout 'application'

  def create
    create!
    resource.user_id = params[:user_id]
    resource.save!
  end

  private

  def note_attributes
    [:content, :title]
  end

  def permitted_params
    params.permit(:note => note_attributes)
  end

  def collection
    @notes = Note.order('created_at DESC').page(params[:page]).per(1)
  end
end
