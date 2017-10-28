class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :photo

  def self.average_score
    average(:score)
  end
end
