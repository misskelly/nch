class CreateSurvey < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :location
      t.integer :reservation_number
      t.string :date_of_survey
      t.string :professional_associates
      t.string :prompt_response
      t.string :appropriate_recommendation
      t.string :appropriate_instruction_paperwork
      t.string :move_in_experience
      t.string :clean_and_comfortable
      t.string :appropriate_furnishing
      t.string :bed_and_bedding
      t.string :would_use_again
      t.string :would_recommend

      t.timestamps
    end
  end
end
