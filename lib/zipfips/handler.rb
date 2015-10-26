require 'json'

module ZipFips
  class Handler
    def is_zip?(code)
      !!zips_hash[code.to_s] && !is_fips(code)
    end

    def is_fips?(code)
      !!fips_hash[code.to_s] && !is_zip(code)
    end

    def to_zip(code)
      fips_hash[code.to_s].to_i
    end

    def to_fips(code)
      zips_hash[code.to_s].to_i
    end

    def fips_hash
      @fips_hash ||= JSON.parse(File.open("#{File.dirname(__FILE__)}/data/data.json", "r").read)
    end

    def zips_hash
      @zips_hash ||= fips_hash.invert
    end
  end
end
