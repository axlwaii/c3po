class Contract < ActiveRecord::Base

  # associations
  #
  #

  belongs_to :user

  # validations
  #
  #

  validates :partner, :title, presence: true

end
