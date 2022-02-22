class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  after_create_commit { broadcast_prepend_to "comments"}
end
