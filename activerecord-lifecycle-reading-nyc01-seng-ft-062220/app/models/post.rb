class Post < ActiveRecord::Base
<<<<<<< HEAD:activerecord-lifecycle-reading-nyc01-seng-ft-062220/app/models/post.rb

  belongs_to :author
  validate :is_title_case 

  before_validation :make_title_case
  private

  def is_title_case
    if title.split.any?{|w|w[0].upcase != w[0]}
      errors.add(:title, "Title must be in title case")
    end
  end

  def make_title_case
    self.title = self.title.titlecase
  end
=======
    belongs_to :category
>>>>>>> bd4fbb2ed54d1c4407fddbf529422f4636a277b4:app/models/post.rb
end
