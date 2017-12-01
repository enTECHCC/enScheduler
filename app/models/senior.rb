class Senior < ApplicationRecord
  def name
    first_name + " " + last_initial + "."
  end
  
  # Date and time formatting
  def dt_format
    "%Y-%m-%d %H:%M"
  end
  
  def dt_created
    created_at.strftime(dt_format)
  end
  
  def dt_updated
    updated_at.strftime(dt_format)
  end
end