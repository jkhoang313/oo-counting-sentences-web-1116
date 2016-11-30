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
    array = self.split(".")
    array.each_with_index {|element, index| array[index] = element.split("?") if element.include?("?")}
    array = array.flatten
    array.each_with_index {|element, index| array[index] = element.split("!") if element.include?("!")}
    array.flatten.delete_if {|element| element == ""}.count
  end
end
