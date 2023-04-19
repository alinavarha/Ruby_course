class Pdr < ApplicationRecord
    belongs_to :user
    has_paper_trail

  # Додайте поле version
  attribute :version, :integer, default: 0
end
