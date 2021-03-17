class Author
    attr_accessor :name 
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @all
    end

    def posts
        Post.all.select do |posts|
            posts.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(titles)
        titles = Post.new(titles)
        titles.author = self
    end

    def self.post_count
        Post.all.count
    end


end