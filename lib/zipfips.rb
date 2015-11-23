require 'json'

module ZipFips
  ZIP_MIN = 1000

  def is_zip?
    !!fips_hash[i_s] && !is_fips?
  end

  def is_fips?
    !!zips_hash[i_s]
  end

  def zipfips
    is_zip? ? to_fips : to_zip
  end

  def to_zip
    get_zip_from_fips
  end

  def to_fips
    get_fips_from_zip
  end

  private

  def i
    self.to_i
  end

  def i_s
    i.to_s
  end

  def get_zip_from_fips
    i_t = i + (i < ZIP_MIN ? ZIP_MIN - i : 0)
    until zips_hash[i_t.to_s] do i_t += 1 end
    zips_hash[i_t.to_s].to_i
  end

  def get_fips_from_zip
    i_t = i + (i < ZIP_MIN ? ZIP_MIN - i : 0)
    until fips_hash[i_t.to_s] do i_t += 1 end
    fips_hash[i_t.to_s].to_i
  end

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
