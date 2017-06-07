class Objective < ApplicationRecord

  validates :name, presence: {message: '¿Y la razón?'}

  validates :name, uniqueness: {
      case_sensitive: false,
      message: 'Alguien más listo que tú ya ha puesto esto antes'
  }

end
