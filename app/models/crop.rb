class Crop < ApplicationRecord
  has_many :tiles, through: :plots
  has_many :plots
  validates :name, presence: true, uniqueness: true
  PLANT_FAMILIES = ['Asteraceae', 'Brassicaceae', 'Chenopodiaceae', 'Cucurbitaceae', 'Fabaceae', 'Lamiaceae', 'Liliaceae', 'Poaceae', 'Rosaceae', 'Solanaceae', 'Umbelliferae']
  validates :plant_family, presence: true, inclusion: { in: PLANT_FAMILIES }
  validates :description, presence: true, length: { maximum: 300 }
  validates :spacing_in_cm, presence: true, numericality: { only_integer: true }
  validates :planting_depth_in_cm, presence: true, numericality: { only_integer: true }
  validates :climber, default: false
  SUN_EXPOSURES = ['Full Sun', 'Part Sun', 'Full Shade']
  validates :sun_exposure, presence: true, inclusion: { in: SUN_EXPOSURES }
  NITROGEN_NEEDS = ['Heavy Feeder', 'Light Feeder', 'Soil Builder']
  validates :nitrogen_needs, presence: true, inclusion: { in: NITROGEN_NEEDS }
  validates :max_days_to_harvest, presence: true, numericality: { only_integer: true }
  validates :min_days_to_harvest, presence: true, numericality: { only_integer: true }
  validates :sowing_months, presence: true
  validates :max_hardiness_zone, presence: true, numericality: { only_integer: true }
  validates :min_hardiness_zone, presence: true, numericality: { only_integer: true }
  validates :water_needs, presence: true, numericality: { only_integer: true }
  CROP_TYPES = ['Bulb Vegetable', 'Flower Vegetable', 'Fruit Vegetable', 'Leafy Vegetable', 'Pod Vegetable', 'Root Vegetable', 'Stem Vegetable', 'Tuber Vegetable']
  validates :crop_type, presence: true, inclusion: { in: CROP_TYPES }
end
