class NotesController < ActionController::Base
  inherit_resources
  before_filter :authenticate_user!
  layout 'application'

  private

  def note_attributes
    [:content, :title]
  end

  def permitted_params
    params.permit(:note => note_attributes)
  end

  def collection
    @contracts = Note.order('created_at DESC')
  end

end
