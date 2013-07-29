class User < ActiveRecord::Base
  validates :username, :uniqueness => { :case_sensitive => false }, presence: true

  has_secure_password

  has_many :votes, dependent: :destroy

  before_save :downcase_username

  def downcase_username
    self.username = self.username.downcase
  end

end
