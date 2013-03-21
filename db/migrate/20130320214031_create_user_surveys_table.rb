class CreateUserSurveysTable < ActiveRecord::Migration
  def change
    create_table :user_surveys do |t|
      t.integer :user_id, :null => false
      t.integer :survey_id, :null => false

      t.timestamps
    end
  end
end
