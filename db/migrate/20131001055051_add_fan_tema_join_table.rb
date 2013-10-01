class AddFanTemaJoinTable < ActiveRecord::Migration
  def change
    create_table :fans_temas, :id => false do |t|
      t.integer :fan_id
      t.integer :tema_id

    end
  end
end
