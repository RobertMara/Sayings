class Saying < ApplicationRecord
  belongs_to :sayer

  # This validation checks to ensure it is not blank
  validates_presence_of :body

end
