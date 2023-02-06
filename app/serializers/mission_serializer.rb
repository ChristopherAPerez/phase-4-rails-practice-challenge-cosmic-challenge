class MissionSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :scientist
  belongs_to :planet
  
end
