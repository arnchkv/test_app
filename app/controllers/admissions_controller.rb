class AdmissionsController < ApplicationController
        before_action :set_admission, only: [:edit, :show, :update, :destroy]
    def new
            @admissions = Admission.new
    end
    
    def create
        #render plain: params[:admission].inspect
        @admissions = Admission.new(admission_params)
                if @admissions.save
                        flash[:notice] = "admission done!"
                        redirect_to admission_path(@admissions)
                else
                render 'new'
                end

        end

        def edit      
        end

        def show
        end

        def update
                
                if @admissions.update(admission_params)
                        flash[:notice] = "update successful"
                        redirect_to admission_path(@admissions)
                else
                        render 'edit'
                end
        end
        def index
                @admissions = Admission.all
                 
        end
        
        def destroy
                
                @admissions.destroy
                flash[:notice] = "record was successfully deleted"



                redirect_to admissions_path

        end
        
        def set_admission
                @admissions = Admission.find(params[:id])
        end

    private
        def admission_params
                params.require(:admission).permit(:name, :description)


        end
       

end 