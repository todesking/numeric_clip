require "numeric_clip/version"

class Numeric
  def clip(lower, upper)
    raise ArgumentError, "lower(#{lower}) > upper(#{upper})" if lower > upper
    if self < lower
      lower
    elsif self > upper
      upper
    else
      self
    end
  end
end
