class Backer

  def initialize(input)
    @name = input
    @backed_projects = []
  end

  def back_project(inputProject)
    backed_projects << inputProject
    if !(inputProject.backers.include?(self))
      inputProject.add_backer(self)
    end
  end

  def backed_projects
    @backed_projects
  end

  def name=(input)
    @name = input
  end

  def name
    @name
  end

end
