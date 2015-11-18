require 'json'

module ZipFips

  def is_zip?
    !!fips_hash[self.to_i.to_s] && !is_fips?
  end

  def is_fips?
    !!zips_hash[self.to_i.to_s]
  end

  def zipfips
    is_zip? ? to_fips : to_zip
  end

  def to_zip
    zips_hash[self.to_i.to_s].to_i
  end

  def to_fips
    fips_hash[self.to_i.to_s].to_i
  end

  private

  def fips_hash
    @@fips_hash ||= JSON.parse(fips_file.read)
  end

  def fips_file
    File.open("#{File.dirname(__FILE__)}/zipfips/data/data.json", "r")
  end

  def zips_hash
    fips_hash.invert
  end
end

class Fixnum
  include ::ZipFips
end

class Integer
  include ::ZipFips
end
