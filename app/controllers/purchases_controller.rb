class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.not_sold_yet
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(params[:purchase])
    if @purchase.save
      redirect_to root_path
    end
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def sell
    purchase = Purchase.find(params[:id])
    purchase.update_attribute(:sold, true)
    redirect_to purchases_path
  end
end
