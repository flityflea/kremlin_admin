class CreateCurtas < ActiveRecord::Migration
  def self.up
    create_table :curtas do |t|
      t.string :texto

      t.timestamps
    end
  end

  def self.down
    drop_table :curtas
  end
end
