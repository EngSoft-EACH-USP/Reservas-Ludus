class AdminsSessionsController < ApplicationController
    def new
        @admin = Admin.new
    end
    
    def create
        if login(params[:email],params[:senha])
            redirect_to("/admin/index")
        else
            redirect_to :back
        end
    end
    
    def destroy
        logout
        redirect_to(:admins)
    end
    
    def login(email, senha)
        admins = Admin.all
        admins.each do |a|
            if a.email == email and a.senha == senha
                return true
            end
        end
        return false
    end    
end