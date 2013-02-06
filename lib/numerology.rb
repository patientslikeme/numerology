require "numerology/version"

module Numerology
  def format_like(example)
    return example
  end
end

Numeric.send(:include, ::Numerology)