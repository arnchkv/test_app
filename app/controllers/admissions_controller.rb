class AdmissionsController < ApplicationController
    def new
            @admissions = Admission.new
    end
    
    def create
        #render plain: params[:admission].inspect
        @admissions = Admission.new(admission_params)
        if @admissions.save
                flash[:notice] = "admission done!"
                redirect_to admissions_path(@admissions)
        else
                render 'new'
        end

end
    

    private
        def admission_params
                params.require(:admission).permit(:name, :description)


        end
        def show

        end

end 