class AdmissionsController < ApplicationController
        before_action :set_admission, only: [:edit, :show, :update, :destroy]
        before_action :require_user, except: [:index, :show]
        before_action :require_same_user, only: [:edit, :update, :destroy]
    def new
            @admissions = Admission.new
    end
    
    def create
        
        @admissions = Admission.new(admission_params)
        @admissions.user = current_user
                if @admissions.save
                        flash[:success] = "admission done!"
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
                        flash[:success] = "update successful"
                        redirect_to admission_path(@admissions)
                else
                        render 'edit'
                end
        end
        def index
                @admissions = Admission.paginate(page: params[:page], per_page: 1)
                 
        end
        
        def destroy
                
                @admissions.destroy
                flash[:danger] = "record was successfully deleted"



                redirect_to admissions_path

        end
        
        def set_admission
                @admissions = Admission.find(params[:id])
        end

    private
        def admission_params
                params.require(:admission).permit(:name, :description)


        end
       def require_same_user
                if current_user != @admissions.user
                        flash[:danger] = "you can only edit or delete your own article"
                        redirect_to root_path
                end
       end

end 