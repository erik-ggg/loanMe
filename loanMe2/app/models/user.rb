class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  has_many :items, dependent: :destroy
  has_many :item_requests, dependent: :destroy
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  def request_item
    @item_request = ItemRequest.new
    @item_request.user_id = self.id
    @item_request.item_id = self.item.id
    @item_request.save
  end

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
