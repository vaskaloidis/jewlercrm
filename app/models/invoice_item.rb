class InvoiceItem < ApplicationRecord
  belongs_to :invoice

  #   has_many :owner_projects, class_name: 'Project', inverse_of: 'owner'
  has_one :project, class_name: 'Project', inverse_of: 'current_task'

  accepts_nested_attributes_for :invoice

end