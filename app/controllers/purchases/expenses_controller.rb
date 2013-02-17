class Purchases::ExpensesController < ApplicationController
  def new
    @purchase = Purchase.find(params[:purchase_id])
    @expense = @purchase.expenses.new
  end

  def create
    @purchase = Purchase.find(params[:purchase_id])
    expense = Expense.new(params[:expense])
    @purchase.expenses << expense
    redirect_to purchase_path(@purchase)
  end

  def destroy
    @purchase = Purchase.find(params[:purchase_id])
    expense = Expense.find(params[:id])
    expense.destroy
    redirect_to purchase_path(@purchase)
  end
end
