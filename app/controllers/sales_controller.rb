class SalesController < ApplicationController
  def index
    @purchases = Purchase.sold
  end

  def show
    @purchase = Purchase.find(params[:id])
  end
end
