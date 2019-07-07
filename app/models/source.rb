class Source < ApplicationRecord

  has_many :sayer_sources, dependent: :destroy
  has_many :sayers, through: :sayer_sources

end
