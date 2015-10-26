require 'spec_helper'

describe ZipFips do
  before do
    ZF ||= ZipFips::Handler.new
  end

  it "should return the proper FIPS code for a ZIP code" do
    ZF.to_zip(12345).should == 36093
  end

  it "should return the proper ZIP code for a FIPS code" do
    ZF.to_fips(36093).should == 12345
  end
end
