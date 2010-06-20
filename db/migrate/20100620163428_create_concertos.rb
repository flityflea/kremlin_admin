class CreateConcertos < ActiveRecord::Migration
  def self.up
    create_table :concertos do |t|
      t.string :local
      t.string :localidade
      t.date :data

      t.timestamps
    end
  end

  def self.down
    drop_table :concertos
  end
end
