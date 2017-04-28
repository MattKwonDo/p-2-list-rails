class NewItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :user
end
