require "rails_helper"

RSpec.describe Survey, type: :model do
  describe "validations" do
    it { should validate_presence_of :location }
    it { should validate_presence_of :reservation_number }
    it { should validate_uniqueness_of :reservation_number }
    it { should validate_presence_of :date_of_survey }
    it { should validate_presence_of :professional_associates }
    it { should validate_presence_of :prompt_response }
    it { should validate_presence_of :appropriate_recommendation }
    it { should validate_presence_of :appropriate_instruction_paperwork }
    it { should validate_presence_of :move_in_experience }
    it { should validate_presence_of :clean_and_comfortable }
    it { should validate_presence_of :appropriate_furnishing }
    it { should validate_presence_of :bed_and_bedding }
    it { should validate_presence_of :would_use_again }
    it { should validate_presence_of :would_recommend }
  end

  describe "Class Methods" do
    before :each do
      Survey.create!(location: "Florida", reservation_number: 10, date_of_survey: "2018-01-01", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 13, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Florida", reservation_number: 9039, date_of_survey: "2018-01-03", professional_associates: 4, prompt_response: 5, appropriate_recommendation: 3, appropriate_instruction_paperwork: 5, move_in_experience: 11, clean_and_comfortable: 3, appropriate_furnishing: 4, bed_and_bedding: 3, would_use_again: 25, would_recommend: 23)
      Survey.create!(location: "Florida", reservation_number: 9030, date_of_survey: "2018-01-02", professional_associates: 5, prompt_response: 4, appropriate_recommendation: 3, appropriate_instruction_paperwork: 5, move_in_experience: 11, clean_and_comfortable: 4, appropriate_furnishing: 3, bed_and_bedding: 4, would_use_again: 25, would_recommend: 15)
      Survey.create!(location: "Boston", reservation_number: 12, date_of_survey: "2018-01-01", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 9022, date_of_survey: "2018-01-02", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 9033, date_of_survey: "2018-01-03", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)

      Survey.create!(location: "Florida", reservation_number: 3988, date_of_survey: "2018-02-02", professional_associates: 4, prompt_response: 5, appropriate_recommendation: 3, appropriate_instruction_paperwork: 5, move_in_experience: 11, clean_and_comfortable: 3, appropriate_furnishing: 4, bed_and_bedding: 3, would_use_again: 25, would_recommend: 23)
      Survey.create!(location: "Florida", reservation_number: 30, date_of_survey: "2018-02-01", professional_associates: 5, prompt_response: 4, appropriate_recommendation: 3, appropriate_instruction_paperwork: 5, move_in_experience: 11, clean_and_comfortable: 4, appropriate_furnishing: 3, bed_and_bedding: 4, would_use_again: 25, would_recommend: 15)
      Survey.create!(location: "Florida", reservation_number: 41688, date_of_survey: "2018-02-03", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 5, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 22, date_of_survey: "2018-02-01", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 3388, date_of_survey: "2018-02-02", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 41388, date_of_survey: "2018-02-03", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)

      Survey.create!(location: "Florida", reservation_number: 39, date_of_survey: "2018-03-01", professional_associates: 4, prompt_response: 5, appropriate_recommendation: 3, appropriate_instruction_paperwork: 5, move_in_experience: 11, clean_and_comfortable: 3, appropriate_furnishing: 4, bed_and_bedding: 3, would_use_again: 25, would_recommend: 23)
      Survey.create!(location: "Florida", reservation_number: 10190, date_of_survey: "2018-03-02", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 5, appropriate_instruction_paperwork: 5, move_in_experience: 13, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Florida", reservation_number: 203910, date_of_survey: "2018-03-03", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 11, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 23)
      Survey.create!(location: "Boston", reservation_number: 10180, date_of_survey: "2018-03-02", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 33, date_of_survey: "2018-03-01", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 120310, date_of_survey: "2018-03-03", professional_associates: 5, prompt_response: 4, appropriate_recommendation: 3, appropriate_instruction_paperwork: 5, move_in_experience: 11, clean_and_comfortable: 4, appropriate_furnishing: 3, bed_and_bedding: 4, would_use_again: 25, would_recommend: 15)

      Survey.create!(location: "Florida", reservation_number: 8031, date_of_survey: "2017-01-01", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 5, appropriate_instruction_paperwork: 5, move_in_experience: 13, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Florida", reservation_number: 1205311, date_of_survey: "2017-01-02", professional_associates: 5, prompt_response: 4, appropriate_recommendation: 3, appropriate_instruction_paperwork: 5, move_in_experience: 11, clean_and_comfortable: 4, appropriate_furnishing: 3, bed_and_bedding: 4, would_use_again: 25, would_recommend: 15)
      Survey.create!(location: "Florida", reservation_number: 124083, date_of_survey: "2017-01-03", professional_associates: 4, prompt_response: 5, appropriate_recommendation: 3, appropriate_instruction_paperwork: 5, move_in_experience: 11, clean_and_comfortable: 3, appropriate_furnishing: 4, bed_and_bedding: 3, would_use_again: 25, would_recommend: 23)
      Survey.create!(location: "Boston", reservation_number: 1872031, date_of_survey: "2017-01-02", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 124023, date_of_survey: "2017-01-03", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 6031, date_of_survey: "2017-01-01", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)

      Survey.create!(location: "Florida", reservation_number: 205311, date_of_survey: "2017-02-01", professional_associates: 5, prompt_response: 4, appropriate_recommendation: 3, appropriate_instruction_paperwork: 5, move_in_experience: 11, clean_and_comfortable: 4, appropriate_furnishing: 3, bed_and_bedding: 4, would_use_again: 25, would_recommend: 15)
      Survey.create!(location: "Florida", reservation_number: 53415, date_of_survey: "2017-02-02", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 5, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Florida", reservation_number: 501900, date_of_survey: "2017-02-03", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 13, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 53412, date_of_survey: "2017-02-02", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 872031, date_of_survey: "2017-02-01", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 501902, date_of_survey: "2017-02-03", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)

      Survey.create!(location: "Florida", reservation_number: 408, date_of_survey: "2017-03-01", professional_associates: 4, prompt_response: 5, appropriate_recommendation: 3, appropriate_instruction_paperwork: 5, move_in_experience: 11, clean_and_comfortable: 3, appropriate_furnishing: 4, bed_and_bedding: 3, would_use_again: 25, would_recommend: 23)
      Survey.create!(location: "Florida", reservation_number: 63524, date_of_survey: "2017-03-02", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 5, appropriate_instruction_paperwork: 5, move_in_experience: 13, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Florida", reservation_number: 33211, date_of_survey: "2017-03-03", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 13, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 402, date_of_survey: "2017-03-01", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 63523, date_of_survey: "2017-03-02", professional_associates: 5, prompt_response: 5, appropriate_recommendation: 4, appropriate_instruction_paperwork: 5, move_in_experience: 15, clean_and_comfortable: 4, appropriate_furnishing: 5, bed_and_bedding: 5, would_use_again: 25, would_recommend: 25)
      Survey.create!(location: "Boston", reservation_number: 33219, date_of_survey: "2017-03-03", professional_associates: 3, prompt_response: 5, appropriate_recommendation: 3, appropriate_instruction_paperwork: 5, move_in_experience: 11, clean_and_comfortable: 3, appropriate_furnishing: 0, bed_and_bedding: 3, would_use_again: 25, would_recommend: 23)
    end
    it ".selected_average_score" do
      expect(Survey.selected_average_score("Florida", "2018-01")).to eq(87.0)
      expect(Survey.selected_average_score("Florida", "2018")).to eq(88.89)

      expect(Survey.selected_average_score("Florida", "2017")).to eq(90.56)
      expect(Survey.selected_average_score("Florida", "2017-01")).to eq(87.33)

      expect(Survey.selected_average_score("Boston", "2018-01")).to eq(98.0)
      expect(Survey.selected_average_score("Boston", "2018")).to eq(95.89)

      expect(Survey.selected_average_score("Boston", "2017-02")).to eq(98.0)
      expect(Survey.selected_average_score("Boston", "2017")).to eq(96.11)
    end
  end
end
