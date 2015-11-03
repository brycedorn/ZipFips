require 'spec_helper'

describe ZipFips do
  zip = 12345
  fips = 36093

  it "should return the proper FIPS code for a ZIP code" do
    expect(zip.to_fips).to eq(fips)
  end

  it "should return the proper ZIP code for a FIPS code" do
    expect(fips.to_zip).to eq(zip)
  end

  it "should automatically convert between the two" do
    expect(fips.zipfips).to eq(zip)
    expect(zip.zipfips).to eq(fips)
  end

  it "should work for strings or numbers" do
    expect(zip.to_fips).to eq(fips)
    expect(zip.to_s.to_fips).to eq(fips)
  end
end
