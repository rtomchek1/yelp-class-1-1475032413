class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :cover_photos,
             :dependent => :destroy

  has_many   :photos,
             :class_name => "UserPhoto",
             :dependent => :destroy

  has_many   :restaurant_tags,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
