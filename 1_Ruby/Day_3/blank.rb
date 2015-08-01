# quote from the book

class NilClass        # add method for Class NilClass
  def blank?
    true
  end
end

class String        # add method for Class String
  def blank?
    self.size == 0
  end
end

["", "person", nil].each do |element|    # belong to different classes like String and NilClass
  puts element unless element.blank?
end
