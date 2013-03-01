require "numerology/version"

module Numerology
  def format_like(example)
    if example.gsub(/\D/,'') =~ /(0+$)/
      sig_fig = $1.length
      temp = self.round(sig_fig*-1)
    else
      temp = self
    end

    if example =~ /^[0\s]/
      formatted_string = "%#{example[0]}#{example.gsub(/\D/,'').length}d" % temp 
    else
      formatted_string = temp.to_s
    end

    formatted_string = separate_thousands(formatted_string, example[-4]) if example =~ /(\D)\d{3}$/

    formatted_string
  end

  def separate_thousands(formatted_string, separator)
    formatted_string =~ /([^\.]*)(\..*)?/
    int, dec = $1.reverse, $2 ? $2 : ""
    while int.gsub!(/(,|\.|^)(\d{3})(\d)/, '\1\2'+separator+'\3')
    end
    int.reverse + dec
  end
end

Numeric.send(:include, ::Numerology)