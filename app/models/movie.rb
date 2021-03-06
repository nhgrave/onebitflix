class Movie < ApplicationRecord

  belongs_to :category
  belongs_to :serie   , optional: true

  validates :title, presence: true

end
