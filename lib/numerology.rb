require "numerology/version"

module Numerology
  def format_like(example)
    return self.separate_thousands(example[-4]) if example =~ /(\D)\d{3}$/
  end

  def separate_thousands(separator)
    self.to_s =~ /([^\.]*)(\..*)?/
    int, dec = $1.reverse, $2 ? $2 : ""
    while int.gsub!(/(,|\.|^)(\d{3})(\d)/, '\1\2'+separator+'\3')
    end
    int.reverse + dec
  end
end

Numeric.send(:include, ::Numerology)