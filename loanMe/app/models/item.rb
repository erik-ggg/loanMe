class Item < ActiveRecord::Base
  validates :name, :description, presence: true
  belongs_to :user
  has_many :item_requests

  def loan
    self.update_attribute(:state, !self.state)
    self.save
  end




end
