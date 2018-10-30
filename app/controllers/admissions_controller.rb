class AdmissionsController < ApplicationController
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
                @admissions = Admission.find(params[:id])
        end

        def show
                @admissions = Admission.find(params[:id])
        end
        def update
                @admissions = Admission.find(params[:id])
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

    private
        def admission_params
                params.require(:admission).permit(:name, :description)


        end
       

end 