class TrucksController < ApplicationController


def index

  @trucks = Truck.all
  @cities = City.all
  @truck_loads = TruckLoad.all
  @tuck_merchandises = TruckMerchandise.all
  @truck_type = TruckType.all
  @user = User.all
  @coverage = Coverage.all

end

def show
  #code
end

def new

  @trucks = Truck.new

end

def edit
  #code
end

def create
  @truck = Truck.new(truck_params)
  @truck.user = current_user
  @user= User.where(role: :user)
  respond_to do |format|

    if @truck.save
      format.html { redirect_to @truck, notice: 'Truck was successfully created.' }
      format.json { render :show, status: :created, location: @truck }
      # @user.each do |user|
      #   email = user.email
      #   UserNotifierMailer.new_article_created(email, @truck.title, @truck.id).deliver_now
      # end

    else
      format.html { render :new }
      format.json { render json: @truck.errors, status: :unprocessable_entity }
    end
  end
end

def update
  #code
end

def destroy
  #code
end

private

def truck_params
  params.require(:truck).permit(:user_id, :TruckType_id, :TruckMerchandise_id, :TruckLoad_id, :coverage_id, :city_id, :gps, :aviable_now, :image, :latitude, :longitude, :price_per_km)
end

def is_user?
  unless current_user
    flash[:alert] = "You don't have permissions"
    redirect_to articles_path
  end
end
end
