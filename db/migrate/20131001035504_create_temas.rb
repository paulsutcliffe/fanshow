class CreateTemas < ActiveRecord::Migration
  def change
    create_table :temas do |t|
      t.string :nombre
      t.string :slug

      t.timestamps
    end
  end
end
