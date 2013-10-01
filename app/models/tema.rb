class Tema < ActiveRecord::Base
  attr_accessible :nombre

  has_and_belongs_to_many :fans
end
