class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.string :direccion_ip

      t.timestamps
    end
  end
end
