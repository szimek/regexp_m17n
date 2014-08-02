module RegexpM17N
  def self.non_empty?(str)
    pattern  = "^.+$".encode(str.encoding)

    if str.encoding.dummy?
      str     = str.encode("UTF-8")
      pattern = pattern.encode("UTF-8")
    end

    str =~ Regexp.new(pattern)
  end
end
