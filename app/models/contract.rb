class Contract < ActiveRecord::Base

  # validations
  #
  #

  validates :partner, :title, presence: true

end
