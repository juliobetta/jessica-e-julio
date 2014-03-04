class Guest < ActiveRecord::Base
  validates_presence_of   :code, :email, :name, :status
  validates_uniqueness_of :email, :code
  validates_inclusion_of  :status, :in => [:confirmed, :not_confirmed, :unconfirmed]

  attr_accessible :code, :confirmed_aggregates, :email, :name, :possible_aggregates, :status

  def status
    read_attribute(:status).to_sym rescue :not_confirmed.to_s
  end

  def status= (valor)
    write_attribute(:status, valor.to_s)
  end
end
