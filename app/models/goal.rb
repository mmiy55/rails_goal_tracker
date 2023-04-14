class Goal < ApplicationRecord
  belongs_to :user

  def self.categories
    ['health', 'diet', 'beauty', 'education', 'career', 'social', 'spiritual', 'eco', 'recreation', 'financial', ' general goal ']
  end

  # validations
  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: categories }

  has_one_attached :photo

end
