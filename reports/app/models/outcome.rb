class Outcome < ActiveRecord::Base
  belongs_to :student
  belongs_to :location
end
