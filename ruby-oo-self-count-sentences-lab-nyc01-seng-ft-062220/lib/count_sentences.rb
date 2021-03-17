require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    if self.include?(",")
    self.split(',').count
    else
    self.split(" ").count
    end
  end
end
# binding.pry