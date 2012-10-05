require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Person::Name do
  describe '#new' do
    it "should return a Person::Name" do
      Person::Name.new.should be_a_kind_of(Person::Name)
    end
    it "should return parts of the name" do
      name = Person::Name.new
      name.first.should be_a_kind_of(String)
      name.middle.should be_a_kind_of(String)
      name.last.should be_a_kind_of(String)
    end
  end
end