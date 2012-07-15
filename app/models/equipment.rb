class Equipment
  include Mongoid::Document
  has_and_belongs_to_many :exercises


  field :name, type: String

  attr_accessible :name
end
