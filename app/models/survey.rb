class Survey < ApplicationRecord
  validates_presence_of :location,
                        :date_of_survey,
                        :professional_associates,
                        :prompt_response,
                        :appropriate_recommendation,
                        :appropriate_instruction_paperwork,
                        :move_in_experience,
                        :clean_and_comfortable,
                        :appropriate_furnishing,
                        :bed_and_bedding,
                        :would_use_again,
                        :would_recommend

  validates :reservation_number, uniqueness: true, presence: true

  

end
