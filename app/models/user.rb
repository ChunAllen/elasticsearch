class User < ActiveRecord::Base

  include Flex::ModelIndexer
  flex.sync self
  has_many :blogs

  def flex_source
    {
      title: "Wat",
      name: self.name,
      blogs: blogs
    }
  end


end
