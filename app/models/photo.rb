class Photo < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  has_many   :notes,
             :through => :comments,
             :source => :user

  has_many   :fans,
             :through => :likes,
             :source => :user

  # Validations

end
