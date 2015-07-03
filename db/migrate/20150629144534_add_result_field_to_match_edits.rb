class AddResultFieldToMatchEdits < ActiveRecord::Migration
  def change
  	add_column :match_edits, :result, :integer
  end
end
