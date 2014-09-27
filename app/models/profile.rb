class Profile < ActiveRecord::Base
  belongs_to :agency
  belongs_to :user
end
