require 'pry'
class Backer

  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project) # takes in a project instance and adds the project to it's backed projects
    @backed_projects << project
    project.add_backer(self)
  end
end