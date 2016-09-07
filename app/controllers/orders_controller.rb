class OrdersController < ApplicationController

	before_action :set_order, only: [ :destroy, :edit, :update]

	def new
		@order = Order.new
	end

	def create
		@order = Order.new order_params
		if @order.save
      redirect_to root_path, :notice => 'Спасибо за ваш заказ!!'
    else
      render :new
		end
	end

	def edit
	end

	def update
		@order.update_attributes order_params
	end

	def index
		# @phone = Order.find_by(phone_number: params[:phone_number])
		@orders = Order.all.find_by(phone_number: params[:phone_number])
	end

	def destroy
		@order.destroy
	end

	private

		def order_params
			params.require(:order).permit(:username, :phone_number, :adress_from, :adress_to)
		end

		def set_order
      @order = Order.find params[:id]
    end

end

