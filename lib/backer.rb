class Backer 
  
  attr_reader :name, :backed_projects
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
     # If we are calling this method in this way, what type of argument is it taking?
    # We are actually passing in a Project object! Cool, huh?
    @backed_projects << project
    project.backers << self
  end
  
  
end