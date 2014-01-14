class User < ActiveRecord::Base

  # validations
  #
  #

  validate :uniqueness_of_robin

  # associations
  #
  #

  has_many :contracts, dependent: :nullify
  has_many :notes, dependent: :nullify

  # meta programming
  #
  #

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private

  def uniqueness_of_robin
    self.errors[:base] << "Sorry, this app is not public yet!" if User.count > 0
  end

end
