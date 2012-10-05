require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Person::Address do
  describe '#new' do
    it "should return a Person::Address" do
      Person::Address.new.should be_a_kind_of(Person::Address)
    end
    let(:address) { Person::Address.new }
    it "should return a random line from the postal_code file" do
      address.random_line_from_postal_code_file.should be_a_kind_of(Array)
    end
    it "should " do
      address.street.should be_a_kind_of(String)
      address.city.should be_a_kind_of(String)
      address.state.should be_a_kind_of(String)
      address.zip.should be_a_kind_of(String)
    end
  end
end