class ItemLoansController < ApplicationController
  before_action :set_item_loan, only: [:show, :edit, :update, :destroy]

  # GET /item_loans
  # GET /item_loans.json
  def index
    @item_loans = ItemLoan.all
  end

  # GET /item_loans/1
  # GET /item_loans/1.json
  def show
  end

  # GET /item_loans/new
  def new    
    @item_loan = ItemLoan.new
  end

  # GET /item_loans/1/edit
  def edit
  end

  # POST /item_loans
  # POST /item_loans.json
  def create
    @item_loan = ItemLoan.new(item_loan_params)

    respond_to do |format|
      if @item_loan.save
        format.html { redirect_to @item_loan, notice: 'Item loan was successfully created.' }
        format.json { render :show, status: :created, location: @item_loan }
      else
        format.html { render :new }
        format.json { render json: @item_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_loans/1
  # PATCH/PUT /item_loans/1.json
  def update
    respond_to do |format|
      if @item_loan.update(item_loan_params)
        format.html { redirect_to @item_loan, notice: 'Item loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_loan }
      else
        format.html { render :edit }
        format.json { render json: @item_loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_loans/1
  # DELETE /item_loans/1.json
  def destroy
    @item_loan.destroy
    respond_to do |format|
      format.html { redirect_to item_loans_url, notice: 'Item loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_loan
      @item_loan = ItemLoan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_loan_params
      params.require(:item_loan).permit(:item_id, :user_id, :estimated_return_date)
    end
end
