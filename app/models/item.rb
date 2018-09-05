class Item < ApplicationRecord
  belongs_to :departmental
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy

  end
