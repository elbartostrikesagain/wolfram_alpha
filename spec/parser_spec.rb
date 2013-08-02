require 'spec_helper'

#running live so we can see if our site parsing no longer works asap

describe "WolframAlpha::Parser" do
  describe "pods" do
    let(:pods) {WolframAlpha::Parser.new("price of gas in boulder").pods}
    subject {pods}

    it "has titles" do
      subject.map(&:title).should == ["Input interpretation:", "Result: (average estimate for Colorado):"]
    end

    it "has text" do
      subject.map(&:text).should == ["all grades of gasoline | average price per gallon | Boulder, Colorado", "$3.586/gal  (US dollars per gallon)  (Monday, July 29, 2013)"]
    end
  end
end