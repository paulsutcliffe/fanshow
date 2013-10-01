class Tema < ActiveRecord::Base
  attr_accessible :nombre

  has_and_belongs_to_many :fans

  default_scope order('nombre ASC')

  def votos
    self.fans.count.to_s
  end
end
