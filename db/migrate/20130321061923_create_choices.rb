class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :text, :null => false
      t.integer :question_id, :null => false

      t.timestamps
    end
  end
end
