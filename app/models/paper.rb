class Paper < ApplicationRecord
  validates :title, presence: true, length: {minimum: 1}
  validates :venue, presence: true, length: {minimum: 1}
  validates :year, presence: true, numericality: { only_integer: true }
  has_and_belongs_to_many :authors

  scope :year, (lambda do |year|
    if year.present?
      where(year: year)
    else
      unscoped # does not apply a where clause
    end
  end)
  #scope :year, -> (input_year) {where year: input_year}
  #validates_associated :authors
end
