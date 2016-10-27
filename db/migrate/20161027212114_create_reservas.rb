class CreateReservas < ActiveRecord::Migration[5.0]
  def change
    create_table :reservas do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.integer :pessoas
      t.date :data
      t.time :hora
      t.boolean :pne
      t.text :obs

      t.timestamps
    end
  end
end
