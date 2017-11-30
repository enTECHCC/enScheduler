class Senior < ApplicationRecord
  def name
    first_name + " " + last_initial + "."
  end
end