require 'securerandom'

class Guest < ActiveRecord::Base
  STATUS = [:confirmed, :not_confirmed, :unconfirmed]

  validates_presence_of   :code, :name, :status
  validates_uniqueness_of :email, :code
  validates_inclusion_of  :status, :in => self::STATUS
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  attr_accessible :code, :confirmed_aggregates, :email, :name, :possible_aggregates, :status

  after_initialize :new_record_defaults

  def new_record_defaults
    if self.new_record?
      self.code = SecureRandom.hex(3).to_s.upcase
    end
  end

  def status_enum
    [['SIM', :confirmed], ['Não-confirmado', :not_confirmed], ['NÃO', :unconfirmed]]
  end

  def status
    read_attribute(:status).to_sym rescue :not_confirmed.to_s
  end

  def status= (valor)
    write_attribute(:status, valor.to_s)
  end
end
