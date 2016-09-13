class OrdersController < ApplicationController

	before_action :set_order, only: [ :destroy, :edit, :update, :to_new, :to_pending, :to_completed, :to_denied]
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

	def to_new
    @order.to_new
    redirect_to orders_path
	end

	def to_pending
    @order.to_pending
    redirect_to orders_path
	end

	def to_completed
    @order.to_completed
    redirect_to orders_path
	end
	
	def to_denied
    @order.to_denied
    redirect_to orders_path
	end

	private

		def order_params
			params.require(:order).permit(:username, :phone_number, :adress_from, :adress_to, :home_adress, :status)
		end

		def set_order
      @order = Order.find params[:id]
    end

end
