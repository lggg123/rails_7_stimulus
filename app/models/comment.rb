class Comment < ApplicationRecord
  include Visible
  # the command in the rails g model is article:references that adds
  # this command to the comment.rb that is created with rails g model
  belongs_to :article
end
