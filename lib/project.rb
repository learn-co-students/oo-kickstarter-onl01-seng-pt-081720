require 'pry'
class Project

  attr_accessor :backers, :backer, :name
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer) # takes in a backer instance and adds the backer to it's backers
    @backers << backer
    backer.backed_projects << self
  end
end