class Post < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["id", "title", "description", "created_at", "updated_at"]
  end

end
