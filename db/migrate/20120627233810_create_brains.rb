class CreateBrains < ActiveRecord::Migration
  def change
    create_table :brains do |t|
      t.string :blood
      t.string :finger
      t.string :string

      t.timestamps
    end
  end
end
