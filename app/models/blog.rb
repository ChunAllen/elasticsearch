class Blog < ActiveRecord::Base

  include Flex::ModelIndexer
  belongs_to :user
  flex.sync :user


end
