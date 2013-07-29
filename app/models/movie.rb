class Movie < ActiveRecord::Base

  attr_accessible :title

  belongs_to :director
  has_many :roles
  has_many :votes
  has_many :users, :through => :votes


  validates :title, presence: true
  validates :title, :uniqueness => { :scope => :year}

end
