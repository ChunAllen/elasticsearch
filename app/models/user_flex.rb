class UserFlex

  include Flex::ActiveModel
  flex.type = "user"
  attribute :name
  attribute :email

end
