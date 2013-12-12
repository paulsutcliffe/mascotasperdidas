class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :publicaciones, :through => :transacciones
  has_many :transacciones
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :nombre, :apellido, :dni, :telefono, :direccion_attributes
  # attr_accessible :title, :body
  has_one :direccion
  accepts_nested_attributes_for :direccion
end
