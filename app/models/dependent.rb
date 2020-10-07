class Dependent < ApplicationRecord
  belongs_to :user
  has_many :medical_histories, dependent: :destroy
end
