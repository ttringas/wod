class Exercise
  include Mongoid::Document

  has_and_belongs_to_many :equipments, inverse_of: nil

  field :name,            type: String
  field :description,     type: String
  field :how_much_unit,   type: String
  field :how_many_unit,   type: String
  #equipment_ids

  attr_accessible :name, 
                  :description,
                  :how_many_unit,
                  :how_much_unit,
                  :equipment_ids

  HOW_MANY_UNITS = %w(weight, distance, none)
  HOW_MUCH_UNITS = %w(reps, time)

  def self.randomthree
    all.shuffle[0..2]
  end
  
end
