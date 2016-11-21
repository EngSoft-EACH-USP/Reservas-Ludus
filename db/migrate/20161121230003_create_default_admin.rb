class CreateDefaultAdmin < ActiveRecord::Migration[5.0]
	def self.up
		Admin.create(:id => "1", :nome => "Admin", :email => "admin@admin.com", :senha => "123456", :created_at => "2016-11-21", :updated_at => "2016-11-21")
	end
	def self.down
		Admin.delete_all(:id => "1")
	end
end
