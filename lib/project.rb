class Project

def initialize(name)
  @name = name
  @backers = []
end

def add_backer(inputBacker)
  @backers << inputBacker
  if !(inputBacker.backed_projects.include?(self))
    inputBacker.add_project(self)
  end
end

end
