class Project < ApplicationRecord
  has_many :photos, dependent: :destroy
end
