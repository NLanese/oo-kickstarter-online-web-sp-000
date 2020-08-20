class Project

def initialize(name)
  @name = name
  @backers = []
end

def add_backer(inputBacker)
  @backers << inputBacker
  if !(inputBacker.backed_projects.include?(self))
    inputBacker.back_project(self)
  end
end

def backers
  @backers
end

def title
  @name
end

def title=(input)
  @name = input
end

end
