class Project

    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        p_b = ProjectBacker.all.select do |project_backer|
        project_backer.project == self
        end
        p_b.map do |project_b|
            project_b.backer 
        end
    end
end