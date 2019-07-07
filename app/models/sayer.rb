class Sayer < ApplicationRecord

  has_many :sayings, dependent: :destroy
  has_many :sayer_sources, dependent: :destroy
  has_many :sources, through: :sayer_sources

end
