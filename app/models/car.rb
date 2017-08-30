class Car
  include Mongoid::Document

  belongs_to :driver

  field :model, type: String
  field :number_car, type: Integer
  field :year_issue, type: Integer
  field :index_number, type: Integer
  field :engine_power, type: Integer
  field :carcase, type: String
  field :color, type: String
  field :weight, type: Integer
  field :driver_id, type: Integer

end
