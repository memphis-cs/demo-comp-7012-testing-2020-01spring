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
require 'test_helper'

class CarTest < ActiveSupport::TestCase

  test "all fixtures valid" do
    cars.each do |car|
      assert car.valid?
    end
  end

end
