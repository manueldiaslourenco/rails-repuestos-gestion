class BillsController < ApplicationController
  before_action :set_bill, only: %i[show]

  def index
    @bills = Bill.all
  end

  def show
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(bill_params)
    if @bill.save
      redirect_to @bill, notice: "Factura creada correctamente."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_bill
    @bill = Bill.find(params[:id])
  end

  def bill_params
    params.require(:bill).permit(:date, :invoice_currency)
  end
end
