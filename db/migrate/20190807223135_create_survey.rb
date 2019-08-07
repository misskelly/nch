class CreateSurvey < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :location
      t.integer :reservation_number
      t.string :date_of_survey
      t.string :professional_associates
      t.string :prompt_response
      t.string :appropreate_recommendation
      t.string :appropreate_instruction_paperwork
      t.string :move_in_experience
      t.string :clean_and_comfortable
      t.string :appropreate_furnishing
      t.string :bed_and_bedding
      t.string :would_use_again
      t.string :would_recommend

      t.timestamps
    end
  end
end
