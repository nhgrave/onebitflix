class Serie < ApplicationRecord

  belongs_to :category

  has_many :movies

  validates :title, presence: true

end
