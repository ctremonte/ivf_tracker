class Comment < ActiveRecord::Base
  attr_accessible :body, :object_id, :user_id, :when
end
