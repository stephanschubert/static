require 'spec_helper'

describe Static::Page do
  it { is_expected.to be_mongoid_document }
  it { is_expected.to be_timestamped_document }

  it { is_expected.to be_slugged_document }
  it { is_expected.to have_slug(:title) }

  it { is_expected.to have_field(:title).of_type(String) }
  it { is_expected.to validate_presence_of(:title) }

  it { is_expected.to have_field(:body).of_type(String) }
  it { is_expected.to validate_presence_of(:body) }

  it "should be valid coming from the factory" do
    expect(F("static/page")).to be_valid
  end
end
