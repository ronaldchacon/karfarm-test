class InvoicesController < ApplicationController
  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(invoice_params)
    if @invoice.valid?
      @invoice.save
      flash[:notice] = "Successfully Submitted Invoice"
      redirect_to @invoice
    else
      render :new
    end
  end

  def show
    @invoice = Invoice.find(params[:id]) or not_found
  end

  private

    def invoice_params
      params.require(:invoice).permit(:state, :price, :sales_tax, :service_fee, :total)
    end
end
