class CreateMatchEdits < ActiveRecord::Migration
  def change
    create_table :match_edits do |t|
      t.belongs_to :match, index: true
      t.belongs_to :player, index: true
      
      t.timestamps null: false
    end
  end
end
