class UsersController < ApplicationContro    index
        @users = User.all
        render json: @users
    end
            
        
    def create
        @user = User.create(user_params)
            if @user.valid?
                render json: @user
            else
                render json: {errors: @user.errors.full_messages}
            end
    end
            
        
    def update       
        @user = User.find(params[:id])    
            if @user.update(user_params)
            render json: @user
             else
                render json: {errors: "Invalid update"}
            end
    end
            
        
    def destroy
                
        @user = User.find(params[:id])            
        @user.destroy 
        render json: @user
    end
            
        
    private
              
    def user_params 
        params.permit(:name, :password)
    end
  
end
