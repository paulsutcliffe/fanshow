class Fan < ActiveRecord::Base
  attr_accessible :direccion_ip

  has_and_belongs_to_many :temas
end
