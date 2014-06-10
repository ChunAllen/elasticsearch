class BlogFlex
  include Flex::ActiveModel

  flex.type = "blog"
  attribute :title
  attribute :content

end
