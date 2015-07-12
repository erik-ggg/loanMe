class ItemRequest < ActiveRecord::Base
  validates :user_id, :item_id, :date_request, :estimated_return_date, presence: true
  belongs_to :user
  belongs_to :item

  def loan
    @item_loan = ItemLoan.new
    @item_loan.item_id = self.item_id
    @item_loan.user_id = self.user_id
    @item_loan.estimated_return_date = self.estimated_return_date
    @item_loan.save
  end


end
