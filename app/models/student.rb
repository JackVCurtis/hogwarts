class Student < ActiveRecord::Base
  belongs_to :house

  before_save :assign_house

  private

  def assign_house
    houses = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
    house = House.find_by(name: houses.sample)
    self.house = house
  end
end