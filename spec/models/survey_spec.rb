require "rails_helper"

RSpec.describe Survey, type: :model do
  describe "validations" do
    it { should validate_presence_of :location }
    it { should validate_presence_of :reservation_number }
    it { should validate_uniqueness_of :reservation_number }
    it { should validate_presence_of :date_of_survey }
    it { should validate_presence_of :professional_associates }
    it { should validate_presence_of :prompt_response }
    it { should validate_presence_of :appropreate_recommendation }
    it { should validate_presence_of :appropreate_instruction_paperwork }
    it { should validate_presence_of :move_in_experience }
    it { should validate_presence_of :clean_and_comfortable }
    it { should validate_presence_of :appropreate_furnishing }
    it { should validate_presence_of :bed_and_bedding }
    it { should validate_presence_of :would_use_again }
    it { should validate_presence_of :would_recommend }
  end
end
