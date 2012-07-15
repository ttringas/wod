class EquipmentController < ApplicationController

  def index
    @equipments = Equipment.all
    @equipment = Equipment.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipments }
    end
  end

  def new
    @equipment = Equipment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipment }
    end
  end

  def create
    @equipment = Equipment.new(params[:equipment])

    respond_to do |format|
      if @equipment.save
        format.html { redirect_to equipment_index_path, notice: 'Equipment was successfully created.' }
        format.json { render json: @equipment, status: :created, location: @equipment }
      else
        format.html { render action: "new" }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy

    respond_to do |format|
      format.html { redirect_to equipment_index_path }
      format.json { head :no_content }
    end
  end
end
