class Backer

  def initialize(input)
    @name = input
    @backed_projects = []
  end

  def add_project(inputProject)
    backed_projects << inputProject
    if !(inputProject.backers.include?(self))
      inputProject.add_backer(self)
    end
  end

  def projects
    @backed_projects
  end

end
