class Article < ApplicationRecord
    include Visible
    # this is to handle invalid user input
    # rails provides validations to help us deal with invalid user input
    # if any of the checks fail, the save will be aborted.
    has_many :comments

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

    # instead of having this repeated code below of 
    # valid statuses we just refer to visible
end