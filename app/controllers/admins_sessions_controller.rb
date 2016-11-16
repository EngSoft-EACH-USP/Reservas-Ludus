class AdminsSessionsController < ApplicationController
    @@adminId = 0
    
    def new
        @admin = Admin.new
    end
    
    def create
        if login(params[:email],params[:senha])
            session[:current_user_id] = @@adminId
            redirect_to("/admin/index")
        else
            redirect_to :back
        end
    end
    
    def destroy
        reset_session
        redirect_to(:admins)
    end
    
    def login(email, senha)
        admins = Admin.all
        admins.each do |a|
            if a.email == email and a.senha == senha
                @@adminId = a.id
                return true
            end
        end
        return false
    end    
end