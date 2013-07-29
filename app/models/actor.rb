class Actor < ActiveRecord::Base

  attr_accessible :name, :dob

  has_many :movies, :through => :roles

  has_many :roles, dependent: :destroy

  validates :name, presence: true

end
