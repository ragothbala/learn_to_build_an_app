class Team < ApplicationRecord
  # Direct associations

  has_many   :bases,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
