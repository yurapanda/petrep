# class ServicesToDosController < ApplicationController
#   before_action :set_services_to_do, only: [:show, :edit, :update, :destroy]

#   # GET /services_to_dos
#   # GET /services_to_dos.json
#   def index
#     @services_to_dos = ServicesToDo.all
#   end

#   # GET /services_to_dos/1
#   # GET /services_to_dos/1.json
#   def show
#   end

#   # GET /services_to_dos/new
#   def new
#     @services_to_do = ServicesToDo.new
#   end

#   # GET /services_to_dos/1/edit
#   def edit
#   end

#   # POST /services_to_dos
#   # POST /services_to_dos.json
#   def create
#     @services_to_do = ServicesToDo.new(services_to_do_params)

#     respond_to do |format|
#       if @services_to_do.save
#         format.html { redirect_to @services_to_do, notice: 'Services to do was successfully created.' }
#         format.json { render :show, status: :created, location: @services_to_do }
#       else
#         format.html { render :new }
#         format.json { render json: @services_to_do.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /services_to_dos/1
#   # PATCH/PUT /services_to_dos/1.json
#   def update
#     respond_to do |format|
#       if @services_to_do.update(services_to_do_params)
#         format.html { redirect_to @services_to_do, notice: 'Services to do was successfully updated.' }
#         format.json { render :show, status: :ok, location: @services_to_do }
#       else
#         format.html { render :edit }
#         format.json { render json: @services_to_do.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /services_to_dos/1
#   # DELETE /services_to_dos/1.json
#   def destroy
#     @services_to_do.destroy
#     respond_to do |format|
#       format.html { redirect_to services_to_dos_url, notice: 'Services to do was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_services_to_do
#       @services_to_do = ServicesToDo.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def services_to_do_params
#       params.require(:services_to_do).permit(:service_id, :done)
#     end
# end
