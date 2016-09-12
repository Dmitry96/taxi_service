class OrdersController < ApplicationController

	before_action :set_order, only: [ :destroy, :edit, :update]
	before_action :authenticate_user!, only: [ :index ]

	def new
		@order = Order.new
	end

	def create
<<<<<<< HEAD
		 @order = Order.new(order_params)

=======
		@order = Order.new order_params
>>>>>>> 315cec726693f23b7705e4844cef3aa4f84f4a64
		if @order.save
      redirect_to root_path, :notice => 'Спасибо за ваш заказ!!'
    else
      render :new
		end
	end

	def edit
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
		# denied - отказ
		# new - только поступил
		# pending - ждет машину
		# completed - успешно завершен
	end

	def destroy
		@order.destroy
	end

	private

		def order_params
			params.require(:order).permit(:username, :phone_number, :adress_from, :adress_to, :home_adress, :status)
		end

		def set_order
<<<<<<< HEAD
      		@order = Order.find_by(phone_number: params[:phone_number])
    	end
end
=======
      @order = Order.find params[:id]
    end

end

>>>>>>> 315cec726693f23b7705e4844cef3aa4f84f4a64
