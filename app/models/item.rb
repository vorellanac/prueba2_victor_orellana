class Item < ApplicationRecord
# FK
  belongs_to :category
  belongs_to :user
end
