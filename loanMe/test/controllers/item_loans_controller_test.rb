require 'test_helper'

class ItemLoansControllerTest < ActionController::TestCase
  setup do
    @item_loan = item_loans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_loans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_loan" do
    assert_difference('ItemLoan.count') do
      post :create, item_loan: { estimated_return_date: @item_loan.estimated_return_date, item_id: @item_loan.item_id, user_id: @item_loan.user_id }
    end

    assert_redirected_to item_loan_path(assigns(:item_loan))
  end

  test "should show item_loan" do
    get :show, id: @item_loan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_loan
    assert_response :success
  end

  test "should update item_loan" do
    patch :update, id: @item_loan, item_loan: { estimated_return_date: @item_loan.estimated_return_date, item_id: @item_loan.item_id, user_id: @item_loan.user_id }
    assert_redirected_to item_loan_path(assigns(:item_loan))
  end

  test "should destroy item_loan" do
    assert_difference('ItemLoan.count', -1) do
      delete :destroy, id: @item_loan
    end

    assert_redirected_to item_loans_path
  end
end
