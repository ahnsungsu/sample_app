require 'spec_helper'

describe Portrait do

  let(:user) { FactoryGirl.create(:user) }
  before do
    @portrait = user.portraits.build(filename: "children-1.jpg",
                                     thumbnail: "thumb-children-1.jpg",
                                     description: "")
  end

  subject { @portrait }

  it { should respond_to(:filename) }
  it { should respond_to(:thumbnail) }
  it { should respond_to(:description) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @portrait.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank filename" do
    before { @portrait.filename = " " }
    it { should_not be_valid }    
  end
end
