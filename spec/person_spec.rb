require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Person::Name do
  describe '#new' do
    it "should return a Person::Name" do
      Person::Name.new.should be_a_kind_of(Person::Name)
    end
    let(:name) {Person::Name.new}
    it "should return parts of the name" do
      name.first.should be_a_kind_of(String)
      name.middle.should be_a_kind_of(String)
      name.last.should be_a_kind_of(String)
    end
    it "should return the full name" do
      name.name.should be_a_kind_of(String)
    end
  end
end