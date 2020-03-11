class Post

    attr_accessor :author
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def author=(my_author)
        @author = my_author
        my_author.posts << self
    end

    def author
        @author
    end

    def title
        @title
    end

    def self.all
        @@all
    end

    def author_name
        if self.author
            self.author.name
        else
            nil
        end
    end

end