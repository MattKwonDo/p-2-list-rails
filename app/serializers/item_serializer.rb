class ItemSerializer < ActiveModel::Serializer
  attributes :id, :item_name
  has_one :user_id
end
