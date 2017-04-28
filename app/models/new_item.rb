class NewItem < ApplicationRecord
  belongs_to :user # , optional: true

  validates :name, presence: true
end
