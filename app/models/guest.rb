require 'securerandom'

class Guest < ActiveRecord::Base
  STATUS = [:confirmed, :not_confirmed, :unconfirmed]

  validates_presence_of   :code, :name, :status
  validates_uniqueness_of :code
  validates_inclusion_of  :status, in: self::STATUS
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, allow_blank: true
  validates_uniqueness_of :email, allow_blank: true

  attr_accessible :code, :confirmed_aggregates, :email, :name, :possible_aggregates, :status

  after_initialize :new_record_defaults

  def new_record_defaults
    if self.new_record? and self.code.nil?
      self.code = SecureRandom.hex(3).to_s.upcase
    else
      self.code = self.code.upcase
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

  def confirmed?
    self.status == :confirmed
  end

  def confirm!(params)
    confirmed_aggregates = params[:confirmed_aggregates].to_i

    # can't set confirmed aggregates greater than possible aggregates
    if confirmed_aggregates > self.possible_aggregates
      confirmed_aggregates = self.possible_aggregates
    end

    self.status               = :confirmed
    self.confirmed_aggregates = confirmed_aggregates
    self.save
  end

end
