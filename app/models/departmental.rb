class Departmental < ApplicationRecord
  has_many :items, dependent: :destroy
end
