class NewItem < ApplicationRecord
  belongs_to :user # , optional: true
  # do I need this?
    # validates :text, :user, presence: true
    validates :name, presence: true
end
