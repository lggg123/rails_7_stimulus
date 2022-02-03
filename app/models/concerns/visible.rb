# a concern is only responsible for a focused 
# subset of the model's responsibility; the 
# methods in our concern will all be related to 
# the visibility of a model

module Visible
    extend ActiveSupport::Concern

    VALID_SATUSES = ['public', 'private', 'archived']

    included do
        validates :status, inclusion: { in: VALID_STATUSES }
    end

    # class methods can also be added to concerns
    class_methods do
        def public_count
            where(status: 'public').count
        end
    end

    def archived?
        status == 'archived'
    end
end
