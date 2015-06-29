class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :match_date
      
      t.timestamps null: false
    end
  end
end
