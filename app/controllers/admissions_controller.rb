class AdmissionsController < ApplicationController
    def new
            @admissions = Admission.new
    end
    
    def create
        #render plain: params[:admission].inspect
        @admissions = Admission.new(admission_params)
        @admissions.save


    end
    private
        def admission_params
                params.require(:admission).permit(:name, :description)


        end
    

end 