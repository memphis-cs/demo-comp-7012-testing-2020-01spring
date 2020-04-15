# == Schema Information
#
# Table name: cars
#
#  id         :bigint           not null, primary key
#  make       :string
#  model      :string
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Car < ApplicationRecord

  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true

end
