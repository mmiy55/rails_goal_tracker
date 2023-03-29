class Goal < ApplicationRecord
  belongs_to :user

  # validations
  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: ['health', 'beauty', 'education', 'work', 'relations', 'eco', 'entertainment', 'other'] }
end
