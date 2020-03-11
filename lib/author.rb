class Author

    attr_accessor :name, :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        @posts
    end

    def add_post(new_post)
        new_post.author = self
        @posts << new_post
    end

    def add_post_by_title(new_title)
        new_post = Post.new(new_title)
        new_post.author = self
        @posts << new_post
    end

    def self.post_count
        Post.all.length
    end

end