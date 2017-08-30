class Driver
  include Mongoid::Document

  attr_accessible :first_name, :middle_name, :last_name, :active,
                  :birthday, :category_rights, :data_issue_rights

  has_many :cars

  field :first_name, type: String
  field :middle_name, type: String
  field :last_name, type: String
  field :active, type: Boolean
  field :birthday, type: Data
  field :category_rights, type: String
  field :data_issue_rights, type: Data

end
