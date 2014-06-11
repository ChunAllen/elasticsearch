class User < ActiveRecord::Base

  include Flex::ModelIndexer
  flex.sync self
  has_many :blogs

  def flex_source
    {
      name: name,
      email: email,
      blogs: blogs,
      blog_count: blogs.count.to_s
    }
  end


end
