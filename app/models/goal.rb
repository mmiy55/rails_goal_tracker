class Goal < ApplicationRecord
  belongs_to :user

  def self.categories
    ['health', 'beauty', 'education', 'career', 'social', 'spiritual', 'eco', 'recreation', 'financial', 'other']
  end

  # validations
  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: categories }

  # has_one_attached :photo

end
