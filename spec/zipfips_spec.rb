require 'spec_helper'

describe ZipFips do
  before do
    ZF ||= ZipFips::Handler.new
  end

  it "should return the proper FIPS code for a ZIP code" do
    expect(ZF.to_fips(12345)).to eq(36093)
  end

  it "should return the proper ZIP code for a FIPS code" do
    expect(ZF.to_zip(36093)).to eq(12345)
  end

  it "should automatically convert between the two" do
    expect(ZF.convert(36093)).to eq(12345)
    expect(ZF.convert(12345)).to eq(36093)
  end
end
