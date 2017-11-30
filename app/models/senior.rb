class Senior < ApplicationRecord
  def cat_senior_name(first_name, last_initial)
    @senior_name_fulL = first_name + " " + last_initial + "."
  end
end
