class Note < ActiveRecord::Base

  # associations
  #
  #

  belongs_to :user

  # validations
  #
  #

  validates :content, presence: true

end
