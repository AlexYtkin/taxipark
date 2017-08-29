class DriversController < ApplicationController

   def index
     @drivers = Driver.all
   end

   def new
     @driver = Driver.new
   end

   def edit
     @driver = Driver.find(params[:id])
   end

   def create
     @driver = Driver.new(params[:driver])

     if @driver.save
       redirect_to drivers_path
     else
       render 'new'
     end
   end

   def update
     @driver = Driver.find(params[:id])

     if @driver.update(params[:driver])
       redirect_to drivers_path
     else
       render 'edit'
     end
   end

  #private
  #def driver_params
  #  params.require(:driver).permit(:first_name, :middle_name, :last_name, :active,
  #                                :birthday, :category_rights, :data_issue_rights)
  #end
end
