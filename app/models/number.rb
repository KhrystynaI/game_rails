class Number < ApplicationRecord
  has_one :board

  validates :numb, presence: true,
            length:          {is: 1},
            numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: ((Figaro.env.count_box_board).to_i)-1}

end
