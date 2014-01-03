class User < ActiveRecord::Base

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
end
