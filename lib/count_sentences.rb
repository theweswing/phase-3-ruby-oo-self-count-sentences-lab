require 'pry'

class String
  def sentence?
    self[-1] == '.' ? true : false
  end

  def question?
    self[-1] == '?' ? true : false
  end

  def exclamation?
    self[-1] == '!' ? true : false
  end

  def count_sentences
    periods = self.split('.')
    periods_points =
      periods.collect { |given_string| given_string.split('!') }.flatten
    periods_points_marks =
      periods_points.collect { |given_string| given_string.split('?') }.flatten
    flattened_and_split = periods_points_marks.flatten
    flattened_and_split
    flattened_and_split.length
  end
end
