class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [:facebook]

  has_many :publicaciones, :through => :transacciones
  has_many :publicaciones
  has_many :transacciones
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :telefono, :direccion_attributes,:provider, :uid, :name
  # attr_accessible :title, :body
  has_one :direccion
  accepts_nested_attributes_for :direccion

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    usuario = Usuario.where(:provider => auth.provider, :uid => auth.uid).first
    unless usuario
      usuario = Usuario.create(name:auth.extra.raw_info.name,
                         provider:auth.provider,
                         uid:auth.uid,
                         email:auth.info.email,
                         password:Devise.friendly_token[0,20]
                         )
    end
    usuario
  end

  def self.new_with_session(params, session)
    super.tap do |usuario|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        usuario.email = data["email"] if usuario.email.blank?
      end
    end
  end
end
