class CountElements
  def initialize(array)
    @array = array
  end

  def perform
    occurences = Hash.new(0)
    @array.each do |element|
      occurences[element] += 1
    end
    occurences
  end
end

CountElements.new([0, 4, 2, 1, 0, 2, 5]).perform