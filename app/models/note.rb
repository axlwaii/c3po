class Note < ActiveRecord::Base

  # validations
  #
  #

  validates :content, presence: true

end
