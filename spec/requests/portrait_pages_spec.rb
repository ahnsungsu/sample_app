require 'spec_helper'

describe "Portrait pages" do
  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "portrait creation" do
    #let(:portrait) { FactoryGirl.build(:portrait, user: user) }
    #before { visit portraits_path(portrait) }

    describe "with invalid information" do
      #it "should not create a portrait" do
      #  expect { click_button "Save" }.not_to change(Portrait, :count)
      #end

      #describe "error messages" do
      #  before { click_button "Save" }
      #  it { should have_content('error') }
      #end
    end

    describe "with valid information" do
      #before { fill_in "Filename", with: "portrait-1.jpg" }
      it "should create a portrait" do
        #expect { click_button "Save" }.not_to change(Portrait, :count).by(1)
      end
    end

  describe "portrait destruction" do
    before { FactoryGirl.create(:portrait, user: user) }

    describe "as correct user" do
      before { visit root_path }

      it "should delete a portrait" do
        #expect { click_link "delete" }.to change(Portrait, :count).by(-1)
      end
    end
  end  end
end
