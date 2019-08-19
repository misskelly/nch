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

  # year_month needs to be like this "2018-01"
  def self.selected_average_score(location, date_selected)
    a = Survey.where(location: location).where("date_of_survey like ?", "%#{date_selected}%")
    b = a.pluck(:professional_associates, :prompt_response,
                :appropriate_recommendation, :appropriate_instruction_paperwork,
                :move_in_experience, :clean_and_comfortable,
                :appropriate_furnishing, :bed_and_bedding,
                :would_use_again, :would_recommend)
    c = (b.flatten.sum / a.count.to_f).round(2)
  end
end
