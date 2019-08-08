class CreateSurvey < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :location
      t.integer :reservation_number
      t.string :date_of_survey
      t.integer :professional_associates
      t.integer :prompt_response
      t.integer :appropriate_recommendation
      t.integer :appropriate_instruction_paperwork
      t.integer :move_in_experience
      t.integer :clean_and_comfortable
      t.integer :appropriate_furnishing
      t.integer :bed_and_bedding
      t.integer :would_use_again
      t.integer :would_recommend

      t.timestamps
    end
  end
end
