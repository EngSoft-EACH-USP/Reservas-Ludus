class CreateFuncionarios < ActiveRecord::Migration[5.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :email
      t.string :funcao
      t.boolean :admin

      t.timestamps
    end
  end
end
