require 'spec_helper'

describe Static::Page do
  it { should be_mongoid_document }
  it { should be_timestamped_document }

  it { should have_field(:title).of_type(String) }
  it { should validate_presence_of(:title) }

  it { should have_field(:body).of_type(String) }
  it { should validate_presence_of(:body) }

  it "should be valid coming from the factory" do
    F("static/page").should be_valid
  end
end
