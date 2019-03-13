class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] ||= @roster[grade] = []
        @roster[grade] << name
    end
  end

  def grade(year)
    return @roster[year]
  end

  def sort
    new_hash = {}
    @roster.each {|grade, name|
    new_hash[grade] = name.sort}
    new_hash
  end

end
