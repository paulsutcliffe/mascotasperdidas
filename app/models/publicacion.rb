class Publicacion < ActiveRecord::Base
  attr_accessible :animal, :descripcion, :edad, :fecha, :lat, :lng, :nombre, :portada, :raza, :recompensa, :sexo, :tipo, :imagenes_attributes, :status

  extend FriendlyId
  belongs_to :usuario
  has_many :imagenes
  has_one :direccion
  has_one :plan
  accepts_nested_attributes_for :imagenes

  #geocoded_by :direccion
  #after_validation :geocode, :if => :direccion_changed?

  validates :nombre, presence: true
  validates :recompensa, numericality: true
  validates :descripcion, presence: true
  

  TIPOS = ['Perdido','Encontrado']
  SEXO = ['Macho','Hembra']

  def titulo
    "#{nombre} #{animal} #{raza} #{tipo}"
  end

  def self.buscar(tipo, raza, ciudad, distrito, fecha)
    where("tipo = ? AND raza = ? AND extract(month from fecha) = ?", "#{tipo}", "#{raza}", "#{fecha["use_month_names(2i)"].to_i}").joins(:direccion).where("ciudad = ? AND distrito = ?", "#{ciudad}", "#{distrito}")
  end

  friendly_id :titulo, use: :slugged

  mount_uploader :portada, PortadaUploader

end
