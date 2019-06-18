class EmployeesController < ApplicationController
	def index
		@employee = Employee.all
	end
	def new
		@employee = Employee.new
	end
	def show
		@employee = Employee.find(params[:id])
	end
	def create
		#render plain:params[:employee].inspect
		@employee =Employee.new(employee_params)
		@employee.save
		redirect_to @employee
	end
	def edit
			@employee = Employee.find(params[:id])
	end
	def update
		@employee =  Employee.find(params[:id])
		@employee.update(employee_params)
		redirect_to @employee
	end
	def destroy
		@employee = Employee.find(params[:id])
		@employee.destroy
		redirect_to @employee
	end
	private def employee_params
		params.require(:employee).permit(:name, :age, :designation,:gender)
	end
end
