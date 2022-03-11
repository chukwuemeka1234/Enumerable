module MyEnumerable
  def all?
    value = true
    each do
      @list
        .each { |n| return false unless yield n }
    end
    value
  end

  def any?
    value = false
    each do
      @list
        .each { |n| return true if yield n }
    end
    value
  end

  def filter
    value = []
    each do
      @list
        .each { |n| value.push(n) if yield n }
    end
    value
  end
end
