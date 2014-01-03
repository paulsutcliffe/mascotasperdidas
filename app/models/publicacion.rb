class Publicacion < ActiveRecord::Base
  attr_accessible :animal, :descripcion, :edad, :fecha, :lat, :lng, :nombre, :portada, :raza, :recompensa, :sexo, :tipo, :imagenes_attributes, :status, :usuario_id

  extend FriendlyId
  belongs_to :usuario
  has_many :imagenes
  has_one :direccion
  has_one :plan
  has_many :portada
  has_many :transacciones
  has_many :usuarios, :through => :transacciones
  accepts_nested_attributes_for :imagenes
  paginates_per 5

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

  def self.buscar(busqueda)
    # where("tipo = ? AND raza = ? AND extract(month from fecha) = ?", "#{tipo}", "#{raza}", "#{fecha["use_month_names(2i)"].to_i}").joins(:direccion).where("ciudad = ? AND distrito = ?", "#{ciudad}", "#{distrito}")
    if busqueda
      find(:all, :conditions => ['raza LIKE ? OR descripcion LIKE ? OR edad LIKE ? OR nombre LIKE ? OR sexo LIKE ?', "%#{busqueda}%", "%#{busqueda}%", "%#{busqueda}%", "%#{busqueda}%", "%#{busqueda}%"])
    end
  end

  friendly_id :titulo, use: :slugged

  mount_uploader :portada, PortadaUploader

end
