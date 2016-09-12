class OrdersController < ApplicationController

	before_action :set_order, only: [ :destroy, :edit, :update]
	before_action :authenticate_user!, only: [ :index, :edit, :destroy ]

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
		redirect_to orders_path
	end

	def index
		# @phone = Order.find_by(phone_number: params[:phone_number])
		# @orders = Order.all.find_by(phone_number: params[:phone_number])
		@orders = Order.paginate(:page => params[:page], :per_page => 10)
	end

	def destroy
		@order.destroy
	end

	def to_right
    @order = Order.find params[:id]
    @order.to_right
    redirect_to orders_path
	end

	def to_left
    @order = Order.find params[:id]
    @order.to_left
    redirect_to orders_path
	end

	private

		def order_params
			params.require(:order).permit(:username, :phone_number, :adress_from, :adress_to, :home_adress, :status)
		end

		def set_order
      		@order = Order.find_by(phone_number: params[:phone_number])
    end

end
