require "rails_helper"

RSpec.describe AdminsSessionsController do
    context 'Testar login' do
        it 'Testar com email e senha' do
            admin = AdminsSessionsController.new
            expect(admin.login('teste@teste.com','teste')).to eql(false)
        end
    end
    
    context 'Testar login' do
        it 'Testar com email e senha' do
            admin = AdminsSessionsController.new
            expect(admin.login('admin@admin.com','123456')).to eql(true)
        end
    end
end