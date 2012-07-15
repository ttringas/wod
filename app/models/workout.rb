class Workout
  include Mongoid::Document
  include Mongoid::Timestamps
  has_and_belongs_to_many :exercises

  field :note, type: String

  attr_accessible :note, 
                  :exercise_ids

end
